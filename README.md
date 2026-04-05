# RAM-DESIGN

*COMPANY*: CODTECH IT SLOUTIONS

*NAME*: MALLAMPALLY JAYANTHA SIVA SRINIVAS

*INTERN ID*: CTIS7516

*DOMAIN*: VLSI

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTOSH

## Task 2 — RAM Design

Language: Verilog HDL
--
Tool: Xilinx Vivado
--
Target: Artix-7 FPGA
--

## Description

Random Access Memory (RAM) is an essential storage primitive in every digital system. This task involved the design, simulation, synthesis, and full post-implementation analysis of a parameterized synchronous RAM in Verilog HDL. The memory is fully configurable through Verilog parameters: DATA_WIDTH = 8, ADDR_WIDTH = 4, and MEM_DEPTH = 16, giving a 16×8 memory array (16 locations, each 8 bits wide).
The RAM supports synchronous write (rising-edge clocked) and synchronous read operations, controlled by independent enable signals — a write enable (we) and a read enable (re). This separation of read and write control makes the design clean, flexible, and directly extensible to dual-port or multi-bank memory system

<img width="526" height="97" alt="image" src="https://github.com/user-attachments/assets/ff2e0b03-5158-41b3-8634-dda9abfcd3ce" />

The testbench verified sequential write operations to addresses 0x0–0x3 with data values 0xAA, 0xBB, 0xCC, and 0xDD, followed by read-back to confirm data integrity. All waveforms were verified in the Vivado Behavioural Simulator. The synthesised design was analysed for LUT/LUTRAM usage, timing slack, and power.

## Key Results

Resources: 8 LUTs + 8 LUTRAM entries (0.01–0.02%), confirming efficient distributed memory mapping
Worst-case Delay: 4.387 ns (synchronous path — slightly higher than the ALU due to clock-to-output register latency)
Total On-Chip Power: 2.174 W (I/O dominant at 95% under vectorless analysis)
RTL & Implementation: Confirmed — synthesised netlist correctly maps to LUTRAM + output register primitives

The use of LUTRAM (distributed memory within LUTs) rather than block RAM (BRAM) is appropriate for this small memory depth, and the Artix-7's 46,200 available LUTRAM entries make it an ideal platform for this task.

## FUTURE EXTENSIONS

RAM: Extend to dual-port RAM, larger BRAM-based depths, byte-enable write strobes.


## OUTPUT

<img width="1552" height="363" alt="Image" src="https://github.com/user-attachments/assets/c860f38d-15d4-4021-88b4-6baad11860bb" />






