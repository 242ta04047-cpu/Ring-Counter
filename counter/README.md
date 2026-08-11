# 4-Bit Ring Counter Using Verilog

## Description

This project implements a 4-bit ring counter using Verilog HDL. A single `1` continuously circulates through the four flip-flop positions on every clock pulse.

## Objective

The objective is to design and simulate a 4-bit ring counter using Verilog HDL and verify its operation using a testbench.

## Inputs

* `clk` – Clock signal
* `reset` – Reset signal

## Output

* `q[3:0]` – 4-bit counter output

## Working

The ring counter starts with `0001`. On every positive edge of the clock, the `1` shifts to the next position.

The counting sequence is:

```text
0001 → 0010 → 0100 → 1000 → 0001
```

Thus, the output continuously repeats the same sequence.

## Project Files

* `README.md` – Project documentation
* `ring_counter.v` – Verilog design code
* `ring_counter_tb.v` – Testbench
* `simulation_output.txt` – Simulation results

## Tools Used

* Verilog HDL
* Xilinx Vivado / ModelSim / Icarus Verilog
* GitHub

## Applications

* Digital counters
* Timing circuits
* Sequence generation
* Control systems
* FPGA-based digital systems

## Conclusion

The 4-bit ring counter was successfully designed and simulated using Verilog HDL. The simulation verifies that a single HIGH bit circulates through the four output positions.
