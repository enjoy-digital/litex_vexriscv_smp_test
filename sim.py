#!/usr/bin/env python3

# This file is Copyright (c) 2020 Florent Kermarrec <florent@enjoy-digital.fr>
# This file is Copyright (c) 2020 Dolu1990 <charles.papon.90@gmail.com>
# License: BSD

import argparse

from migen import *

from litex.build.generic_platform import *
from litex.build.sim import SimPlatform
from litex.build.sim.config import SimConfig

from litex.soc.integration.soc import SoCRegion
from litex.soc.integration.soc_core import *
from litex.soc.integration.builder import *

from litedram.modules import MT41K128M16
from litedram.phy.model import SDRAMPHYModel
from litedram.core.controller import ControllerSettings

from litex.tools.litex_sim import get_sdram_phy_settings

from vexriscv_smp import VexRiscvSMP

# IOs ----------------------------------------------------------------------------------------------

_io = [
    ("sys_clk", 0, Pins(1)),
    ("sys_rst", 0, Pins(1)),
    ("serial", 0,
        Subsignal("source_valid", Pins(1)),
        Subsignal("source_ready", Pins(1)),
        Subsignal("source_data",  Pins(8)),

        Subsignal("sink_valid", Pins(1)),
        Subsignal("sink_ready", Pins(1)),
        Subsignal("sink_data",  Pins(8)),
    ),
]

# Platform -----------------------------------------------------------------------------------------

class Platform(SimPlatform):
    def __init__(self):
        SimPlatform.__init__(self, "SIM", _io)

# SoCSMP -------------------------------------------------------------------------------------------

class SoCSMP(SoCCore):
    def __init__(self, cpu_variant, init_memories=False, with_sdcard=False):
        platform     = Platform()
        sys_clk_freq = int(100e6)

        sdram_init = []
        if init_memories:
            sdram_init = get_mem_data({
                "images/fw_jump.bin": "0x00f00000",
                "images/Image":       "0x00000000",
                "images/dtb"  :       "0x00ef0000",
                "images/rootfs.cpio": "0x01000000",
                }, "little")

        # SoCCore ----------------------------------------------------------------------------------
        SoCCore.__init__(self, platform, clk_freq=sys_clk_freq,
            cpu_type                 = "vexriscv", cpu_variant=cpu_variant, cpu_cls=VexRiscvSMP,
            uart_name                = "sim",
            integrated_rom_size      = 0x8000,
            integrated_main_ram_size = 0x00000000)
        self.platform.name = "sim"
        self.add_constant("SIM")

        # PLIC ------------------------------------------------------------------------------------
        self.bus.add_slave("plic", self.cpu.plicbus, region=SoCRegion(origin=0xf0C00000, size=0x400000, cached=False))
        interrupt_map = {**SoCCore.interrupt_map, **{
            "uart":       1,
        }}

        # CLINT ------------------------------------------------------------------------------------
        self.bus.add_slave("clint", self.cpu.cbus, region=SoCRegion(origin=0xf0010000, size=0x10000, cached=False))

        # CRG --------------------------------------------------------------------------------------
        self.submodules.crg = CRG(platform.request("sys_clk"))

        # SDRAM ------------------------------------------------------------------------------------
        phy_settings = get_sdram_phy_settings(
            memtype    = "DDR3",
            data_width = 16,
            clk_freq   = 100e6)
        self.submodules.sdrphy = SDRAMPHYModel(
            module    = MT41K128M16(100e6, "1:4"),
            settings  = phy_settings,
            clk_freq  = 100e6,
            init      = sdram_init)
        self.add_sdram("sdram",
            phy                     = self.sdrphy,
            module                  = MT41K128M16(100e6, "1:4"),
            origin                  = self.mem_map["main_ram"],
            controller_settings     = ControllerSettings(
                cmd_buffer_buffered = False,
                with_auto_precharge = True
            )
        )
        if init_memories:
            self.add_constant("MEMTEST_BUS_SIZE",  0) # Skip test if memory is initialized to avoid
            self.add_constant("MEMTEST_ADDR_SIZE", 0) # corrumpting the content.
            self.add_constant("MEMTEST_DATA_SIZE", 0)
            self.add_constant("ROM_BOOT_ADDRESS", 0x40f00000) # Jump to fw_jump.bin
        else:
            self.add_constant("MEMTEST_BUS_SIZE",  4096)
            self.add_constant("MEMTEST_ADDR_SIZE", 4096)
            self.add_constant("MEMTEST_DATA_SIZE", 4096)

        # SDCard -----------------------------------------------------------------------------------
        if with_sdcard:
            self.add_sdcard("sdcard", use_emulator=True)

# Build --------------------------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(description="Linux on LiteX-VexRiscv Simulation")
    parser.add_argument("--cpu-variant",          default="2c",            help="Select CPU netlist variant")
    parser.add_argument("--sdram-init",           action="store_true",     help="Init SDRAM with Linux images")
    parser.add_argument("--with-sdcard",          action="store_true",     help="Enable SDCard support")
    parser.add_argument("--trace",                action="store_true",     help="Enable VCD tracing")
    parser.add_argument("--trace-start",          default=0,               help="Cycle to start VCD tracing")
    parser.add_argument("--trace-end",            default=-1,              help="Cycle to end VCD tracing")
    parser.add_argument("--opt-level",            default="O3",            help="Compilation optimization level")
    args = parser.parse_args()

    sim_config = SimConfig(default_clk="sys_clk")
    sim_config.add_module("serial2console", "serial")

    for i in range(2):
        soc = SoCSMP(args.cpu_variant, args.sdram_init and i!=0, args.with_sdcard)
        builder = Builder(soc,
            compile_gateware = i!=0,
            csr_json         = "build/sim/csr.json")
        builder.build(sim_config=sim_config,
            run         = i!=0,
            opt_level   = args.opt_level,
            trace       = args.trace,
            trace_start = int(args.trace_start),
            trace_end   = int(args.trace_end),
            trace_fst   = 1)
        os.chdir("../")
        if i == 0:
            os.system("./json2dts.py build/sim/csr.json > build/sim/dts") # FIXME
            os.system("dtc -O dtb -o images/dtb build/sim/dts")           # FIXME
            os.system("cp verilog/*.bin build/sim/gateware/")

if __name__ == "__main__":
    main()
