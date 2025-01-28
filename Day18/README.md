# 🛠️ Day 18: Magnitude Comparator in Verilog

Welcome to Day 18 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-bit Magnitude Comparator** in Verilog. This module compares two 4-bit numbers and outputs whether one is greater than, equal to, or less than the other. Magnitude comparators are essential in digital systems for sorting, decision-making, and control flow operations.

---

## ✨ Project Overview  

The **Magnitude Comparator** compares two 4-bit inputs (`a` and `b`) and generates three outputs:  
- `a_gt_b`: High when `a > b`.  
- `a_eq_b`: High when `a == b`.  
- `a_lt_b`: High when `a < b`.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `a`: 4-bit input number.  
  - `b`: 4-bit input number.  
- **Outputs:**  
  - `a_gt_b`: 1-bit output, high if `a > b`.  
  - `a_eq_b`: 1-bit output, high if `a == b`.  
  - `a_lt_b`: 1-bit output, high if `a < b`.  

---

## ⚙️ How It Works  

The module uses simple relational operators to compute the outputs:  
- `a_gt_b = (a > b)`  
- `a_eq_b = (a == b)`  
- `a_lt_b = (a < b)`  

This ensures efficient comparison logic for any two 4-bit inputs.

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day18
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_magnitude_comparator magnitude_comparator.v magnitude_comparator_tb.v
   vvp tb_magnitude_comparator
   ```  

3. **View Waveforms**  
   Open the generated `magnitude_comparator.vcd` file in GTKWave:  
   ```bash
   gtkwave magnitude_comparator.vcd
   ```  

---

## 💡 Key Learnings  

- **Relational Operators in Verilog:** Learned how to implement comparison logic using operators like `>`, `==`, and `<`.  
- **Efficient Comparator Design:** Gained insights into creating a simple and efficient comparator circuit.  
- **Testbench Development:** Validated the design by simulating various input combinations to confirm its functionality.  

---

## 🔗 Resources  

- [Magnitude Comparator](https://en.wikipedia.org/wiki/Magnitude_comparator)  
- [Verilog Relational Operators](https://www.chipverify.com/verilog/verilog-operators)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on exciting projects. 😊
