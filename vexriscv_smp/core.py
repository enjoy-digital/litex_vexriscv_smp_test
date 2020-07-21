# This file is Copyright (c) 2020 Florent Kermarrec <florent@enjoy-digital.fr>
# This file is Copyright (c) 2020 Dolu1990 <charles.papon.90@gmail.com>
# License: BSD

import os
from os import path

from migen import *

from litex.soc.interconnect import wishbone
from litex.soc.interconnect.csr import *
from litex.soc.cores.cpu import CPU, CPU_GCC_TRIPLE_RISCV32

from litedram.common import LiteDRAMNativePort

import os
import os.path


CPU_VARIANTS = {
    "default":    "VexRiscv",
}

class Open(Signal): pass

class VexRiscvSMP(CPU):
    name                 = "vexriscv"
    human_name           = "VexRiscv SMP"
    variants             = CPU_VARIANTS
    data_width           = 32
    endianness           = "little"
    gcc_triple           = CPU_GCC_TRIPLE_RISCV32
    linker_output_format = "elf32-littleriscv"
    nop                  = "nop"
    io_regions           = {0x80000000: 0x80000000} # origin, length

    cpu_count      = 1
    coherent_dma   = False
    litedram_width = 128
    dbus_width     = 64
    ibus_width     = 64

    @staticmethod
    def args_fill(parser):
        parser.add_argument("--cpu-count",   default=2,    help="")
        parser.add_argument("--dcache-size", default=8192, help="")
        parser.add_argument("--dcache-ways", default=2,    help="")
        parser.add_argument("--icache-size", default=8192, help="")
        parser.add_argument("--icache-ways", default=2,    help="")


    @staticmethod
    def args_read(args):
        VexRiscvSMP.cpu_count   = args.cpu_count
        VexRiscvSMP.dcache_size = args.dcache_size
        VexRiscvSMP.icache_size = args.icache_size
        VexRiscvSMP.dcache_ways = args.dcache_ways
        VexRiscvSMP.icache_ways = args.icache_ways

    @property
    def mem_map(self):
        return {
            "rom":          0x00000000,
            "sram":         0x10000000,
            "main_ram":     0x40000000,
            "csr":          0xf0000000,
            "clint":        0xf0010000,
        }

    @property
    def gcc_flags(self):
        flags =  " -march=rv32ima     -mabi=ilp32"
        flags += " -D__vexriscv__"
        flags += " -DUART_POLLING"
        return flags

    def generate_netlist(self):
        print(f"Generating cluster netlist")

        gen_args = []
        if(self.coherent_dma) : gen_args.append("--coherent-dma")
        gen_args.append(f"--cpu-count={self.cpu_count}")
        gen_args.append(f"--ibus-width={self.ibus_width}")
        gen_args.append(f"--dbus-width={self.dbus_width}")
        gen_args.append(f"--dcache-size={self.dcache_size}")
        gen_args.append(f"--icache-size={self.icache_size}")
        gen_args.append(f"--dcache-ways={self.dcache_ways}")
        gen_args.append(f"--icache-ways={self.icache_ways}")
        gen_args.append(f"--litedram-width={self.litedram_width}")
        gen_args.append(f"--netlist-directory={os.path.abspath(os.getcwd())}/verilog")
        gen_args.append(f"--netlist-name={self.cluster_name}")

        os.system('cd vexriscv_smp/VexRiscv && sbt "runMain vexriscv.demo.smp.VexRiscvLitexSmpClusterCmdGen {args}"'.format(args=" ".join(gen_args)))

    def __init__(self, platform, variant):
        self.platform         = platform
        self.variant          = "variant"
        self.human_name       = self.human_name + "-" + variant.upper()
        self.cluster_name     = f"VexRiscvLitexSmpCluster_Cc{self.cpu_count}_Iw{self.ibus_width}Is{self.icache_size}Iy{self.icache_ways}_Dw{self.dbus_width}Ds{self.dcache_size}Dy{self.dcache_ways}_Ldw{self.litedram_width}{'_Cdma' if self.coherent_dma else ''}"
        self.reset            = Signal()
        self.jtag_clk         = Signal()
        self.jtag_enable      = Signal()
        self.jtag_capture     = Signal()
        self.jtag_shift       = Signal()
        self.jtag_update      = Signal()
        self.jtag_reset       = Signal()
        self.jtag_tdo         = Signal()
        self.jtag_tdi         = Signal()
        self.interrupt        = Signal(32)
        self.pbus             = pbus    = wishbone.Interface()
        self.cbus             = cbus    = wishbone.Interface()
        self.plicbus          = plicbus = wishbone.Interface()

        self.periph_buses     = [pbus]
        self.memory_buses     = [] # Added dynamically
        self.dma_buses        = [] # Added dynamically

        print(f"VexRiscv cluster : {self.cluster_name}")
        if not path.exists(f"verilog/{self.cluster_name}.v"):
            self.generate_netlist()

        os.system("cp images/{}.dtb images/dtb".format(variant)) # FIXME: generate dts/dtb dynamically

        # # #
        self.cpu_params = dict(
            # Clk / Rst
            i_debugCd_external_clk   = ClockSignal(),
            i_debugCd_external_reset = ResetSignal() | self.reset,

            # Interrupts
            i_interrupts             = self.interrupt,

            # JTAG
            i_jtag_clk               = self.jtag_clk,
            i_debugPort_enable       = self.jtag_enable,
            i_debugPort_capture      = self.jtag_capture,
            i_debugPort_shift        = self.jtag_shift,
            i_debugPort_update       = self.jtag_update,
            i_debugPort_reset        = self.jtag_reset,
            i_debugPort_tdi          = self.jtag_tdi,
            o_debugPort_tdo          = self.jtag_tdo,

            # Peripheral Bus (Master)
            o_peripheral_CYC         = pbus.cyc,
            o_peripheral_STB         = pbus.stb,
            i_peripheral_ACK         = pbus.ack,
            o_peripheral_WE          = pbus.we,
            o_peripheral_ADR         = pbus.adr,
            i_peripheral_DAT_MISO    = pbus.dat_r,
            o_peripheral_DAT_MOSI    = pbus.dat_w,
            o_peripheral_SEL         = pbus.sel,
            i_peripheral_ERR         = pbus.err,
            o_peripheral_CTI         = pbus.cti,
            o_peripheral_BTE         = pbus.bte,

            # CLINT Bus (Slave)
            i_clintWishbone_CYC      = cbus.cyc,
            i_clintWishbone_STB      = cbus.stb,
            o_clintWishbone_ACK      = cbus.ack,
            i_clintWishbone_WE       = cbus.we,
            i_clintWishbone_ADR      = cbus.adr,
            o_clintWishbone_DAT_MISO = cbus.dat_r,
            i_clintWishbone_DAT_MOSI = cbus.dat_w,

            # PLIC Bus (Slave)
            i_plicWishbone_CYC       = plicbus.cyc,
            i_plicWishbone_STB       = plicbus.stb,
            o_plicWishbone_ACK       = plicbus.ack,
            i_plicWishbone_WE        = plicbus.we,
            i_plicWishbone_ADR       = plicbus.adr,
            o_plicWishbone_DAT_MISO  = plicbus.dat_r,
            i_plicWishbone_DAT_MOSI  = plicbus.dat_w
        )

        if self.coherent_dma:
            self.dmabus = dmabus = wishbone.Interface(data_width=64)
            self.dma_buses.append(dmabus)

            dmabus_stall   = Signal()
            dmabus_inhibit = Signal()

            self.cpu_params.update(
                i_dma_wishbone_CYC      = dmabus.cyc,
                i_dma_wishbone_STB      = dmabus.stb & ~dmabus_inhibit,
                o_dma_wishbone_ACK      = dmabus.ack,
                i_dma_wishbone_WE       = dmabus.we,
                i_dma_wishbone_SEL      = dmabus.sel,
                i_dma_wishbone_ADR      = dmabus.adr,
                o_dma_wishbone_DAT_MISO = dmabus.dat_r,
                i_dma_wishbone_DAT_MOSI = dmabus.dat_w,
                o_dma_wishbone_STALL    = dmabus_stall
            )
            self.sync += If(dmabus.stb,
                Display("DMA stb:%d, ack:%d, stall:%d, inhibit:%d, sel:%x, adr:%x",
                    dmabus.stb,
                    dmabus.ack,
                    dmabus_stall,
                    dmabus_inhibit,
                    dmabus.sel,
                    dmabus.adr,
                ),
            )
            finish_counter = Signal(32)
            self.sync += finish_counter.eq(finish_counter + dmabus.stb)
            self.sync += If(finish_counter == 1024, Finish())

            self.sync += [
                If(dmabus.stb & dmabus.cyc & ~dmabus_stall,
                    dmabus_inhibit.eq(1),
                ),
                If(dmabus.ack,
                   dmabus_inhibit.eq(0)
                )
            ]

        if "mp" in variant:
            ncpus = int(variant[-2]) # FIXME
            for n in range(ncpus):
                ibus = LiteDRAMNativePort(mode="both", address_width=32, data_width=128)
                dbus = LiteDRAMNativePort(mode="both", address_width=32, data_width=128)
                self.memory_buses.append(ibus)
                self.memory_buses.append(dbus)
                self.cpu_params.update({
                    # Instruction Memory Bus (Master)
                    "o_io_iMem_{}_cmd_valid".format(n)          : ibus.cmd.valid,
                    "i_io_iMem_{}_cmd_ready".format(n)          : ibus.cmd.ready,
                    "o_io_iMem_{}_cmd_payload_we".format(n)     : ibus.cmd.we,
                    "o_io_iMem_{}_cmd_payload_addr".format(n)   : ibus.cmd.addr,
                    "o_io_iMem_{}_wdata_valid".format(n)        : ibus.wdata.valid,
                    "i_io_iMem_{}_wdata_ready".format(n)        : ibus.wdata.ready,
                    "o_io_iMem_{}_wdata_payload_data".format(n) : ibus.wdata.data,
                    "o_io_iMem_{}_wdata_payload_we".format(n)   : ibus.wdata.we,
                    "i_io_iMem_{}_rdata_valid".format(n)        : ibus.rdata.valid,
                    "o_io_iMem_{}_rdata_ready".format(n)        : ibus.rdata.ready,
                    "i_io_iMem_{}_rdata_payload_data".format(n) : ibus.rdata.data,

                    # Data Memory Bus (Master)
                    "o_io_dMem_{}_cmd_valid".format(n)          : dbus.cmd.valid,
                    "i_io_dMem_{}_cmd_ready".format(n)          : dbus.cmd.ready,
                    "o_io_dMem_{}_cmd_payload_we".format(n)     : dbus.cmd.we,
                    "o_io_dMem_{}_cmd_payload_addr".format(n)   : dbus.cmd.addr,
                    "o_io_dMem_{}_wdata_valid".format(n)        : dbus.wdata.valid,
                    "i_io_dMem_{}_wdata_ready".format(n)        : dbus.wdata.ready,
                    "o_io_dMem_{}_wdata_payload_data".format(n) : dbus.wdata.data,
                    "o_io_dMem_{}_wdata_payload_we".format(n)   : dbus.wdata.we,
                    "i_io_dMem_{}_rdata_valid".format(n)        : dbus.rdata.valid,
                    "o_io_dMem_{}_rdata_ready".format(n)        : dbus.rdata.ready,
                    "i_io_dMem_{}_rdata_payload_data".format(n) : dbus.rdata.data,
                })
        else:
            ibus = LiteDRAMNativePort(mode="both", address_width=32, data_width=128)
            dbus = LiteDRAMNativePort(mode="both", address_width=32, data_width=128)
            self.memory_buses.append(ibus)
            self.memory_buses.append(dbus)
            self.cpu_params.update(
                # Instruction Memory Bus (Master)
                o_iBridge_dram_cmd_valid          = ibus.cmd.valid,
                i_iBridge_dram_cmd_ready          = ibus.cmd.ready,
                o_iBridge_dram_cmd_payload_we     = ibus.cmd.we,
                o_iBridge_dram_cmd_payload_addr   = ibus.cmd.addr,
                o_iBridge_dram_wdata_valid        = ibus.wdata.valid,
                i_iBridge_dram_wdata_ready        = ibus.wdata.ready,
                o_iBridge_dram_wdata_payload_data = ibus.wdata.data,
                o_iBridge_dram_wdata_payload_we   = ibus.wdata.we,
                i_iBridge_dram_rdata_valid        = ibus.rdata.valid,
                o_iBridge_dram_rdata_ready        = ibus.rdata.ready,
                i_iBridge_dram_rdata_payload_data = ibus.rdata.data,

                # Data Memory Bus (Master)
                o_dBridge_dram_cmd_valid          = dbus.cmd.valid,
                i_dBridge_dram_cmd_ready          = dbus.cmd.ready,
                o_dBridge_dram_cmd_payload_we     = dbus.cmd.we,
                o_dBridge_dram_cmd_payload_addr   = dbus.cmd.addr,
                o_dBridge_dram_wdata_valid        = dbus.wdata.valid,
                i_dBridge_dram_wdata_ready        = dbus.wdata.ready,
                o_dBridge_dram_wdata_payload_data = dbus.wdata.data,
                o_dBridge_dram_wdata_payload_we   = dbus.wdata.we,
                i_dBridge_dram_rdata_valid        = dbus.rdata.valid,
                o_dBridge_dram_rdata_ready        = dbus.rdata.ready,
                i_dBridge_dram_rdata_payload_data = dbus.rdata.data,
            )

        # Add verilog sources
        self.add_sources(platform, variant)

    def set_reset_address(self, reset_address):
        assert not hasattr(self, "reset_address")
        self.reset_address = reset_address
        assert reset_address == 0x00000000

    def add_sources(self, platform, variant):
        platform.add_source(os.path.join(os.path.dirname(__file__), "..", "verilog", "RamXilinx.v"))
        platform.add_source(os.path.join(os.path.dirname(__file__), "..", "verilog", self.cluster_name + ".v"))

    def do_finalize(self):
        assert hasattr(self, "reset_address")
        self.specials += Instance(self.cluster_name, **self.cpu_params)
