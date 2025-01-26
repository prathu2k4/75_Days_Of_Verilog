# 🛠️ Day 16: Majority Function in Verilog

Welcome to Day 16 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I worked on implementing a **Majority Function** in Verilog. This simple yet important combinational logic function outputs a '1' if two or more of the three inputs are '1'. It’s widely used in error detection and correction systems, as well as in decision-making circuits.

---

## ✨ Project Overview  

The **Majority Function** computes the majority value of three input bits, `a`, `b`, and `c`. The output is `1` if at least two of the inputs are `1`, otherwise, it outputs `0`.

### **Inputs and Outputs**  
- **Inputs:**  
  - `a`, `b`, `c`: Three 1-bit inputs.
- **Outputs:**  
  - `majority`: 1-bit output indicating the majority value of the inputs.

---

## ⚙️ How It Works  

The Majority Function is computed using the following logic:
- The output is `1` if two or more of the inputs are `1`.  
  The expression for this logic is:  
  \[
  majority = (a \& b) | (b \& c) | (a \& c)
  \]
  
This expression evaluates to true if at least two inputs are true (high).

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day16
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_majority_function majority_function.v majority_function_tb.v
   vvp tb_majority_function
   ```  

3. **View Waveforms**  
   Open the generated `majority_function.vcd` file in GTKWave:  
   ```bash
   gtkwave majority_function.vcd
   ```  

---

## 💡 Key Learnings  

- **Majority Function Logic:** Implemented a simple combinational logic circuit to detect the majority of three inputs.  
- **Testbench Development:** Created a testbench to simulate and verify the behavior of the majority function with various combinations of inputs.  
- **Combinational Logic:** Improved understanding of how to use basic logical operations in Verilog.

---

## 🔗 Resources  

- [Majority Logic Function](https://en.wikipedia.org/wiki/Majority_logic)

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊
