#!/usr/bin/env python3

import sys
import json
import argparse

parser = argparse.ArgumentParser(description="LiteX's CSR JSON to Linux DTS generator")
parser.add_argument("csr_json", help="CSR JSON file")
args = parser.parse_args()

d = json.load(open(args.csr_json))

kB = 1024
mB = kB*1024

aliases = {}

# Header -------------------------------------------------------------------------------------------

dts = """
/dts-v1/;

/ {
	#address-cells = <0x1>;
	#size-cells = <0x1>;
	compatible = "enjoy-digital,litex-vexriscv-soclinux";
	model = "VexRiscv SoCLinux";
"""

# Boot Arguments -----------------------------------------------------------------------------------

dts += """
	chosen {{
		bootargs = "mem={main_ram_size_mb}M@0x{main_ram_base:x} rootwait console=hvc0 earlycon=sbi root=/dev/ram0 init=/sbin/init";
		linux,initrd-start = <0x{linux_initrd_start:x}>;
		linux,initrd-end   = <0x{linux_initrd_end:x}>;
	}};
""".format(
		main_ram_base=d["memories"]["main_ram"]["base"],
		main_ram_size_mb=d["memories"]["main_ram"]["size"]//mB,

		linux_initrd_start=d["memories"]["main_ram"]["base"] + 16*mB,
		linux_initrd_end=d["memories"]["main_ram"]["base"] + 24*mB)

# CPU ----------------------------------------------------------------------------------------------

dts += """
	cpus {{
		#address-cells = <0x1>;
		#size-cells    = <0x0>;
		timebase-frequency = <{sys_clk_freq}>;
""".format(sys_clk_freq=d["constants"]["config_clock_frequency"])

cpus = range(int(d["constants"]["config_cpu_human_name"][-2]))
for cpu in cpus:
	dts += """
		cpu@{cpu} {{
			device_type = "cpu";
			compatible = "riscv";
			riscv,isa = "rv32ima";
			mmu-type = "riscv,sv32";
			reg = <{cpu}>;
			status = "okay";
			L{irq}: interrupt-controller {{
				#interrupt-cells = <0x00000001>;
				interrupt-controller;
				compatible = "riscv,cpu-intc";
			}};
		}};
""".format(cpu=cpu, irq=cpu + 1)

dts += """
	};
"""

# Memory -------------------------------------------------------------------------------------------

dts += """
	memory@{main_ram_base:x} {{
		device_type = "memory";
		reg = <0x{main_ram_base:x} 0x{main_ram_size:x}>;
	}};
""".format(main_ram_base=d["memories"]["main_ram"]["base"],
		   main_ram_size=d["memories"]["main_ram"]["size"])

# Reserved Memory ----------------------------------------------------------------------------------

dts += """
	reserved-memory {
		#address-cells = <0x1>;
		#size-cells    = <0x1>;
		ranges;

		opensbi: sbi@40f00000 {
			reg = <0x40f00000 0x100000>;
		};
	};
"""

# SoC ----------------------------------------------------------------------------------------------

dts += """
	soc {
		#address-cells = <0x1>;
		#size-cells    = <0x1>;
		compatible = "simple-bus";
		ranges;
"""

	# SoC Controller -------------------------------------------------------------------------------

dts += """
		soc_ctrl0: soc_controller@{soc_ctrl_csr_base:x} {{
			compatible = "litex,soc_controller";
			reg = <0x{soc_ctrl_csr_base:x} 0xc>;
			status = "okay";
		}};
	""".format(soc_ctrl_csr_base=d["csr_bases"]["ctrl"])

dts += """
	};
};
"""

print(dts)
