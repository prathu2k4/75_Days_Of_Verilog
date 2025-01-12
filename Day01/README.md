# 🛠️ Day 1: Basic Logic Gates in Verilog  

Welcome to Day 1 of my **75 Days of Verilog Coding Challenge**! 🎉  

In this project, I implemented all the **basic logic gates** using Verilog. This serves as the foundation for understanding **digital design** and **hardware description languages**.  

---

## ✨ Project Overview  

This project includes:  
- **Logic Gates**: AND, OR, NOT, XOR, XNOR, NOR.  
- A **single module design** where all gates are implemented using the same input-output pairs.  
- A comprehensive **testbench** to validate all possible input combinations.  
- Simulation and waveform visualization using **Icarus Verilog** and **GTKWave**.  

---

## ⚙️ How to Run  

Follow these steps to simulate the project:  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day01
   ```

2. **Compile and Simulate**  
   Run the following commands in your terminal:  
   ```bash
   iverilog -o basic_gates_tb basic_gates.v testbench.v
   vvp basic_gates_tb
   ```

3. **View Waveforms**  
   Open the `dumpfile.vcd` file in GTKWave:  
   ```bash
   gtkwave dumpfile.vcd
   ```  

---

## 📊 Truth Table  

The logic gates were tested for the following **truth table**:  

| A | B | AND (`y0`) | OR (`y1`) | NOT (`y2`) | NOR (`y3`) | XOR (`y4`) | XNOR (`y5`) |
|---|---|------------|-----------|------------|------------|------------|-------------|
| 0 | 0 |     0      |     0     |     1      |     1      |     0      |      1      |
| 0 | 1 |     0      |     1     |     1      |     0      |     1      |      0      |
| 1 | 0 |     0      |     1     |     0      |     0      |     1      |      0      |
| 1 | 1 |     1      |     1     |     0      |     0      |     0      |      1      |  

---

## 💡 Key Learnings  

- **Digital Logic Basics**: Revisiting AND, OR, NOT, XOR, XNOR, NOR gates.  
- **Unified Design**: Using the same inputs and outputs for multiple gates in a single module.  
- **Testbench Design**: Writing a testbench to automatically simulate all possible combinations of inputs.  
- **Waveform Analysis**: Using GTKWave to visually validate simulation results.  

---

## 🛠️ Tools Used  

- **Icarus Verilog**: For compiling and simulating Verilog files.  
- **GTKWave**: To visualize waveform outputs.  

---

## 🔗 Resources  

- [Icarus Verilog Official Documentation](http://iverilog.icarus.com/)  
- [GTKWave User Guide](http://gtkwave.sourceforge.net/)  
- [Verilog HDL Basics](https://en.wikipedia.org/wiki/Verilog)  

---

## 🤝 Feedback  

If you have any feedback, suggestions, or ideas for improvement, feel free to reach out or connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs)

Let’s learn and grow together! 💪 