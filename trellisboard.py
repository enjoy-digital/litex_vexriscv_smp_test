#!/usr/bin/env python3

# This file is Copyright (c) 2019 David Shah <dave@ds0.me>
# This file is Copyright (c) 2019-2020 Florent Kermarrec <florent@enjoy-digital.fr>
# This file is Copyright (c) 2020 Dolu1990 <charles.papon.90@gmail.com>
# License: BSD

import os
import argparse

from migen import *
from migen.genlib.resetsync import AsyncResetSynchronizer

from litex_boards.platforms import trellisboard

from litex.soc.cores.clock import *
from litex.soc.integration.soc import SoCRegion
from litex.soc.integration.soc_core import *
from litex.soc.integration.soc_sdram import *
from litex.soc.integration.builder import *

from litedram.common import PHYPadsReducer
from litedram.modules import MT41J256M16
from litedram.phy import ECP5DDRPHY
from litedram.core.controller import ControllerSettings

from liteeth.phy.ecp5rgmii import LiteEthPHYRGMII

from vexriscv_smp import VexRiscvSMP

# CRG ----------------------------------------------------------------------------------------------

class _CRG(Module):
    def __init__(self, platform, sys_clk_freq):
        self.clock_domains.cd_init    = ClockDomain()
        self.clock_domains.cd_por     = ClockDomain(reset_less=True)
        self.clock_domains.cd_sys     = ClockDomain()
        self.clock_domains.cd_sys2x   = ClockDomain()
        self.clock_domains.cd_sys2x_i = ClockDomain(reset_less=True)

        # # #

        self.stop  = Signal()
        self.reset = Signal()

        # Clk / Rst
        clk12 = platform.request("clk12")
        rst   = platform.request("user_btn", 0)

        # Power on reset
        por_count = Signal(16, reset=2**16-1)
        por_done  = Signal()
        self.comb += self.cd_por.clk.eq(clk12)
        self.comb += por_done.eq(por_count == 0)
        self.sync.por += If(~por_done, por_count.eq(por_count - 1))

        # PLL
        sys2x_clk_ecsout = Signal()
        self.submodules.pll = pll = ECP5PLL()
        pll.register_clkin(clk12, 12e6)
        pll.create_clkout(self.cd_sys2x_i, 2*sys_clk_freq)
        pll.create_clkout(self.cd_init,   25e6)
        self.specials += [
            Instance("ECLKBRIDGECS",
                i_CLK0   = self.cd_sys2x_i.clk,
                i_SEL    = 0,
                o_ECSOUT = sys2x_clk_ecsout,
            ),
            Instance("ECLKSYNCB",
                i_ECLKI = sys2x_clk_ecsout,
                i_STOP  = self.stop,
                o_ECLKO = self.cd_sys2x.clk),
            Instance("CLKDIVF",
                p_DIV     = "2.0",
                i_ALIGNWD = 0,
                i_CLKI    = self.cd_sys2x.clk,
                i_RST     = self.reset,
                o_CDIVX   = self.cd_sys.clk),
            AsyncResetSynchronizer(self.cd_init,   ~por_done | ~pll.locked | rst),
            AsyncResetSynchronizer(self.cd_sys,    ~por_done | ~pll.locked | rst | self.reset),
            AsyncResetSynchronizer(self.cd_sys2x,  ~por_done | ~pll.locked | rst | self.reset),
        ]

        self.comb += platform.request("dram_vtt_en").eq(1)

# BaseSoC ------------------------------------------------------------------------------------------

class BaseSoC(SoCCore):
    interrupt_map = {
        "reserved":       0,
    }
    def __init__(self, sys_clk_freq=int(75e6), cpu_count=1, with_ethernet=False, **kwargs):
        VexRiscvSMP.litedram_width = 128
        VexRiscvSMP.ibus_width     = 64
        VexRiscvSMP.dbus_width     = 64
        VexRiscvSMP.coherent_dma   = True

        platform = trellisboard.Platform(toolchain="trellis")

        # SoCCore ----------------------------------------------------------------------------------
        kwargs["integrated_rom_size"] = 0x10000
        kwargs["csr_data_width"]      = 8
        SoCCore.__init__(self, platform, clk_freq=sys_clk_freq, cpu_cls=VexRiscvSMP, cpu_variant="default", **kwargs)
        self.add_constant("config_cpu_count", cpu_count) # for dts generation

        # PLIC ------------------------------------------------------------------------------------
        self.bus.add_slave("plic", self.cpu.plicbus, region=SoCRegion(origin=0xf0C00000, size=0x400000, cached=False))

        # CLINT ------------------------------------------------------------------------------------
        self.bus.add_slave("clint", self.cpu.cbus, region=SoCRegion(origin=0xf0010000, size=0x10000, cached=False))

        # CRG --------------------------------------------------------------------------------------
        self.submodules.crg = _CRG(platform, sys_clk_freq)

        # DDR3 SDRAM -------------------------------------------------------------------------------
        if not self.integrated_main_ram_size:
            self.submodules.ddrphy = ECP5DDRPHY(
                pads         = PHYPadsReducer(platform.request("ddram"), [0, 1]),
                sys_clk_freq = sys_clk_freq)
            self.comb += self.crg.stop.eq(self.ddrphy.init.stop)
            self.comb += self.crg.reset.eq(self.ddrphy.init.reset)
            self.add_csr("ddrphy")
            self.add_sdram("sdram",
                phy                     = self.ddrphy,
                module                  = MT41J256M16(sys_clk_freq, "1:2"),
                origin                  = self.mem_map["main_ram"],
                size                    = kwargs.get("max_sdram_size", 0x40000000),
                l2_cache_size           = kwargs.get("l2_size", 8192),
                l2_cache_min_data_width = kwargs.get("min_l2_data_width", 128),
                l2_cache_reverse        = True,
                controller_settings     = ControllerSettings(
                    cmd_buffer_buffered = False,
                    with_auto_precharge = False)
            )

        # Ethernet ---------------------------------------------------------------------------------
        if with_ethernet:
            self.submodules.ethphy = LiteEthPHYRGMII(
                clock_pads = self.platform.request("eth_clocks"),
                pads       = self.platform.request("eth"))
            self.add_csr("ethphy")
            self.add_ethernet(phy=self.ethphy)


# Build --------------------------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(description="LiteX SoC on Trellis Board")
    parser.add_argument("--build", action="store_true", help="Build bitstream")
    parser.add_argument("--load",  action="store_true", help="Load bitstream")
    builder_args(parser)
    soc_sdram_args(parser)
    VexRiscvSMP.args_fill(parser)
    parser.add_argument("--with-ethernet",   action="store_true", help="Enable Ethernet support")
    parser.add_argument("--with-sdcard",     action="store_true", help="Enable SDCard support (SD Mode)")
    args = parser.parse_args()

    VexRiscvSMP.args_read(args)
    soc = BaseSoC(
        cpu_count     = args.cpu_count,
        with_ethernet = args.with_ethernet,
        **soc_sdram_argdict(args))
    if args.with_sdcard:
        soc.add_sdcard()
    builder = Builder(soc, compile_software=args.build, csr_json="build/trellisboard/csr.json")
    builder.build(run=args.build)

    os.system("./json2dts.py build/trellisboard/csr.json > build/trellisboard/dts") # FIXME
    os.system("dtc -O dtb -o images/dtb build/trellisboard/dts")            # FIXME

    if args.load:
        prog = soc.platform.create_programmer()
        prog.load_bitstream(os.path.join(builder.gateware_dir, soc.build_name + ".svf"))

if __name__ == "__main__":
    main()
