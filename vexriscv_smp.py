# This file is Copyright (c) 2020 Florent Kermarrec <florent@enjoy-digital.fr>
# This file is Copyright (c) 2020 Dolu1990 <charles.papon.90@gmail.com>
# License: BSD

import os

from migen import *

from litex.soc.interconnect import wishbone
from litex.soc.interconnect.csr import *
from litex.soc.cores.cpu import CPU

from litedram.common import LiteDRAMNativePort


CPU_VARIANTS = {
    "standard":         "VexRiscv",
}


GCC_FLAGS = {
    #                               /-------- Base ISA
    #                               |/------- Hardware Multiply + Divide
    #                               ||/----- Atomics
    #                               |||/---- Compressed ISA
    #                               ||||/--- Single-Precision Floating-Point
    #                               |||||/-- Double-Precision Floating-Point
    #                               imacfd
    "standard":         "-march=rv32ima     -mabi=ilp32",
}

class Open(Signal): pass

class VexRiscvSMP(CPU):
    name                 = "vexriscv"
    data_width           = 32
    endianness           = "little"
    gcc_triple           = ("riscv64-unknown-elf", "riscv32-unknown-elf", "riscv-none-embed",
                            "riscv64-linux", "riscv-sifive-elf", "riscv64-none-elf")
    linker_output_format = "elf32-littleriscv"
    io_regions           = {0x80000000: 0x80000000} # origin, length

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
        flags = GCC_FLAGS[self.variant]
        flags += " -D__vexriscv__"
        return flags

    def __init__(self, platform, variant="standard"):
        assert variant in CPU_VARIANTS, "Unsupported variant %s" % variant
        self.platform         = platform
        self.variant          = variant
        self.reset            = Signal()
        self.pbus             = pbus = wishbone.Interface()
        self.ibus             = ibus = LiteDRAMNativePort(mode="both", address_width=32, data_width=128)
        self.dbus             = dbus = LiteDRAMNativePort(mode="both", address_width=32, data_width=128)
        self.cbus             = cbus = wishbone.Interface()

        self.periph_buses     = [pbus]
        self.memory_buses     = [dbus, ibus, cbus]

        # # #

        self.cpu_params = dict(
            # Clk / Rst
            i_clk           = ClockSignal(),
            i_reset         = ResetSignal() | self.reset,
            i_debugResetIn  = ResetSignal() | self.reset,
            o_io_debugReset = Open(),

            # Interrupts
            i_io_externalInterrupts           = 0,
            i_io_externalSupervisorInterrupts = 0,

            # JTAG
            i_io_jtag_tms = 0,
            i_io_jtag_tdi = 0,
            o_io_jtag_tdo = Open(),
            i_io_jtag_tck = 0,

            # Instruction Memory Bus (Master)
            o_io_iMem_cmd_valid          = ibus.cmd.valid,
            i_io_iMem_cmd_ready          = ibus.cmd.ready,
            o_io_iMem_cmd_payload_we     = ibus.cmd.we,
            o_io_iMem_cmd_payload_addr   = ibus.cmd.addr,
            o_io_iMem_wdata_valid        = ibus.wdata.valid,
            i_io_iMem_wdata_ready        = ibus.wdata.ready,
            o_io_iMem_wdata_payload_data = ibus.wdata.data,
            o_io_iMem_wdata_payload_we   = ibus.wdata.we,
            i_io_iMem_rdata_valid        = ibus.rdata.valid,
            o_io_iMem_rdata_ready        = ibus.rdata.ready,
            i_io_iMem_rdata_payload_data = ibus.rdata.data,

            # Data Memory Bus (Master)
            o_io_dMem_cmd_valid          = dbus.cmd.valid,
            i_io_dMem_cmd_ready          = dbus.cmd.ready,
            o_io_dMem_cmd_payload_we     = dbus.cmd.we,
            o_io_dMem_cmd_payload_addr   = dbus.cmd.addr,
            o_io_dMem_wdata_valid        = dbus.wdata.valid,
            i_io_dMem_wdata_ready        = dbus.wdata.ready,
            o_io_dMem_wdata_payload_data = dbus.wdata.data,
            o_io_dMem_wdata_payload_we   = dbus.wdata.we,
            i_io_dMem_rdata_valid        = dbus.rdata.valid,
            o_io_dMem_rdata_ready        = dbus.rdata.ready,
            i_io_dMem_rdata_payload_data = dbus.rdata.data,

            # Peripheral Bus (Master)
            o_io_peripheral_CYC      = pbus.cyc,
            o_io_peripheral_STB      = pbus.stb,
            i_io_peripheral_ACK      = pbus.ack,
            o_io_peripheral_WE       = pbus.we,
            o_io_peripheral_ADR      = pbus.adr,
            i_io_peripheral_DAT_MISO = pbus.dat_r,
            o_io_peripheral_DAT_MOSI = pbus.dat_w,
            o_io_peripheral_SEL      = pbus.sel,
            i_io_peripheral_ERR      = pbus.err,
            o_io_peripheral_CTI      = pbus.cti,
            o_io_peripheral_BTE      = pbus.bte,

            # CLINT Bus (Slave)
            i_io_clint_CYC      = cbus.cyc,
            i_io_clint_STB      = cbus.stb,
            o_io_clint_ACK      = cbus.ack,
            i_io_clint_WE       = cbus.we,
            i_io_clint_ADR      = cbus.adr,
            o_io_clint_DAT_MISO = cbus.dat_r,
            i_io_clint_DAT_MOSI = cbus.dat_w,
        )

        # Add verilog sources
        self.add_sources(platform, variant)

    def set_reset_address(self, reset_address):
        assert not hasattr(self, "reset_address")
        self.reset_address = reset_address
        assert reset_address == 0x00000000

    @staticmethod
    def add_sources(platform, variant="standard"):
        vdir = os.path.join(os.path.dirname(__file__), "verilog")
        platform.add_source_dir(vdir)
        platform.add_verilog_include_path(vdir)

    def do_finalize(self):
        assert hasattr(self, "reset_address")
        self.specials += Instance("VexRiscvLitexSmpCluster", **self.cpu_params)
