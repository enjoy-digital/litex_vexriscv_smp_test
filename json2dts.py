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
	compatible = "spinal,vexriscv";
	model = "spinal,vexriscv_sim";
"""

# Boot Arguments -----------------------------------------------------------------------------------

dts += """
	chosen {{
		bootargs = "mem={main_ram_size_mb}M@0x{main_ram_base:x} rootwait console=hvc0 earlycon=sbi root=/dev/ram0 init=/sbin/init";
		linux,initrd-start = <0x{linux_initrd_start:x}>;
		linux,initrd-end   = <0x{linux_initrd_end:x}>; // max 8MB ramdisk image
	}};
""".format(
		main_ram_base=d["memories"]["main_ram"]["base"],
		main_ram_size=d["memories"]["main_ram"]["size"],
		main_ram_size_mb=d["memories"]["main_ram"]["size"]//mB,

		linux_initrd_start=d["memories"]["main_ram"]["base"] + 16*mB,
		linux_initrd_end=d["memories"]["main_ram"]["base"] + (16 + 8)*mB)

# CPU ----------------------------------------------------------------------------------------------

dts += """
	cpus {{
		#address-cells = <0x1>;
		#size-cells = <0x0>;
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
		#address-cells = <1>;
		#size-cells = <1>;
		ranges;

		opensbi: sbi@40F00000 {
			reg = <0x40F00000 0x100000>;
		};
	};
"""

# SoC ----------------------------------------------------------------------------------------------

dts += """
	soc {
		#address-cells = <0x1>;
		#size-cells = <0x1>;
		compatible = "spinal,vexriscv-sim";
		ranges;
	};
"""

dts += """
};
"""

print(dts)
