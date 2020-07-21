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

cpus = range(int(d["constants"]["config_cpu_count"]))
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
""".format(cpu=cpu, irq=cpu)

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


	# PLIC -------------------------------------------------------------------------------

dts += """
		plic: interrupt-controller@{plic_base:x} {{
			compatible = "sifive,plic-1.0.0", "sifive,fu540-c000-plic";
			reg = <0x{plic_base:x} 0x400000>;
			#interrupt-cells = <1>;
			interrupt-controller;
			interrupts-extended = <
				{cpu_mapping}>;
			riscv,ndev = <32>;
		}};
	""".format(	plic_base=d["memories"]["plic"]["base"],
				cpu_mapping="\n\t\t\t\t".join(["&L{} 11 &L{} 9".format(cpu, cpu) for cpu in cpus]))

	# Ethernet MAC ---------------------------------------------------------------------------------
if "ethphy" in d["csr_bases"] and "ethmac" not in d["csr_bases"]:
		pass

if "ethphy" in d["csr_bases"] and "ethmac" in d["csr_bases"]:
	dts += """
		mac0: mac@{ethmac_csr_base:x} {{
			compatible = "litex,liteeth";
			reg = <0x{ethmac_csr_base:x} 0x7c
				0x{ethphy_csr_base:x} 0x0a
				0x{ethmac_mem_base:x} 0x2000>;
			tx-fifo-depth = <{ethmac_tx_slots}>;
			rx-fifo-depth = <{ethmac_rx_slots}>;
			interrupt-parent = <&plic>;
			interrupts = <{ethmac_interrupt}>;
		}};
	""".format(ethphy_csr_base=d["csr_bases"]["ethphy"],
			   ethmac_csr_base=d["csr_bases"]["ethmac"],
			   ethmac_mem_base=d["memories"]["ethmac"]["base"],
			   ethmac_tx_slots=d["constants"]["ethmac_tx_slots"],
			   ethmac_rx_slots=d["constants"]["ethmac_rx_slots"],
			   ethmac_interrupt=d["constants"]["ethmac_interrupt"])
dts += """
	};
};
"""

print(dts)
