# Day 1: Basic Logic Gates in Verilog

This is the first project of my **75 Days Verilog Coding Challenge**. The goal is to implement all basic logic gates (`AND`, `OR`, `NOT`, `NOR`, `XOR`, `XNOR`) in Verilog and simulate them using **Icarus Verilog** and **GTKWave**.

## Project Details
- **Language**: Verilog
- **Tools Used**:
  - [Icarus Verilog](http://iverilog.icarus.com/) for simulation
  - [GTKWave](http://gtkwave.sourceforge.net/) for waveform visualization

### Files Included
1. `basic_gates.v`: Verilog module implementing the logic gates.
2. `testbench.v`: Testbench to validate the module functionality.
3. `dumpfile.vcd`: Simulation output waveform file (optional, generated during simulation).

## How to Run
1. Install **Icarus Verilog** and **GTKWave**.
2. Clone this repository or download the files.
3. Run the following commands:
   ```bash
   iverilog -o basic_gates_tb basic_gates.v testbench.v
   vvp basic_gates_tb
   gtkwave dumpfile.vcd
