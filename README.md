# Implementation-of-ALU-in-Verilog
Advanced 8-bit ALU in Verilog with flags, extended operations, testbench and GTKWave simulation
## ✨ Features

- Supports the following operations:
  - Addition, Subtraction, Multiplication
  - AND, OR, XOR, NOT, NAND, NOR
  - Shift Left, Shift Right
  - Rotate Left, Rotate Right
  - Set Less Than (SLT)
- Status Flags:
  - Zero
  - Carry
  - Overflow
  - Negative
    
  ## 🛠 Tools Used

- Verilog HDL
- Icarus Verilog (for simulation/Testbench_output)
- GTKWave (for waveform viewing)
- Vivado (for simulation/synthesis)
- VS Code (for writing code)
  ## 🔬 How to Run
-By Using Vivado
 Direct using simulation bar to get waveform.
 We can get Schematic Diagram by Runnig RTL analysis.
- By Using Icarus Verilog
iverilog -o alu_tb alu.v alu_tb.v
vvp alu_tb
gtkwave wave.vcd
gtkwave wave.vcd wave.gtk(for direct veiwing of waveform without above process)
 
 
