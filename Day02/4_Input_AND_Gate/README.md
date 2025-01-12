# 🛠️ Day 2: 4-Input AND Gate Using For-Loop in Verilog  

Welcome to Day 2 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today’s project involves designing a **4-input AND gate** using a **for-loop** in Verilog. This approach demonstrates the power of loops in hardware description languages, making the code more compact and efficient for designs with multiple inputs.  

---

## ✨ Project Overview  

This project includes:  
- A **4-input AND gate** implemented with a **for-loop** to efficiently handle multiple inputs.  
- A **testbench** that tests various input combinations, ensuring correctness of the design.  
- Simulation and waveform analysis using **Icarus Verilog** and **GTKWave**.  

---

## ⚙️ How to Run  

Follow these steps to simulate the project:  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day02/4_Input_AND_Gate
   ```

2. **Compile and Simulate**  
   Run the following commands in your terminal:  
   ```bash
   iverilog -o and_4input_tb and_4input.v testbench.v
   vvp and_4input_tb
   ```

3. **View Waveforms**  
   Open the `dumpfile.vcd` file in GTKWave:  
   ```bash
   gtkwave dumpfile.vcd
   ```  

---

## 📊 Truth Table  

The **4-input AND gate** was tested for the following truth table:  

| A | B | C | D | Output (Y) |
|---|---|---|---|------------|
| 0 | 0 | 0 | 0 |     0      |
| 0 | 0 | 0 | 1 |     0      |
| 0 | 0 | 1 | 0 |     0      |
| 0 | 0 | 1 | 1 |     0      |
| 0 | 1 | 0 | 0 |     0      |
| 0 | 1 | 0 | 1 |     0      |
| 0 | 1 | 1 | 0 |     0      |
| 0 | 1 | 1 | 1 |     0      |
| 1 | 0 | 0 | 0 |     0      |
| 1 | 0 | 0 | 1 |     0      |
| 1 | 0 | 1 | 0 |     0      |
| 1 | 0 | 1 | 1 |     0      |
| 1 | 1 | 0 | 0 |     0      |
| 1 | 1 | 0 | 1 |     0      |
| 1 | 1 | 1 | 0 |     0      |
| 1 | 1 | 1 | 1 |     1      |

---

## 💡 Key Learnings  

- **For-Loops in Verilog**: Learned how to use loops for compact and efficient designs.  
- **Testing Multiple Inputs**: Designed a testbench to handle 16 input combinations (2⁴).  
- **Waveform Validation**: Used GTKWave to verify the correctness of the gate’s output.  

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

I’d love to hear your feedback or suggestions! If you’re working on similar projects or have ideas to share, feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs).  

Let’s learn and grow together! 💪 