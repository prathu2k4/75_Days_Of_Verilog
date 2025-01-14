# 🛠️ Day 4: 2-bit Magnitude Comparator in Verilog  

Welcome to Day 4 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **2-bit Magnitude Comparator**, a fundamental combinational circuit used to compare two binary numbers and determine their relationship.  

---

## ✨ Project Overview  

The **2-bit Magnitude Comparator** takes two 2-bit inputs (`a` and `b`) and produces three outputs:  
- `a < b` (less than comparison)  
- `a > b` (greater than comparison)  
- `a == b` (equality check)  

This circuit is widely used in decision-making logic for embedded and digital systems.  

---

## ⚙️ How It Works  

### **Inputs and Outputs**  
- **Inputs**:  
  - `a[1:0]`: First 2-bit binary number  
  - `b[1:0]`: Second 2-bit binary number  
- **Outputs**:  
  - `a_less_than_b`: High (`1`) when `a` is less than `b`  
  - `a_greater_than_b`: High (`1`) when `a` is greater than `b`  
  - `a_equal_b`: High (`1`) when `a` is equal to `b`  

### **Logic Table**  
| **a (2-bit)** | **b (2-bit)** | **a < b** | **a > b** | **a = b** |  
|:-------------:|:-------------:|:---------:|:---------:|:----------:|  
| `00`          | `00`          | `0`       | `0`       | `1`        |  
| `00`          | `01`          | `1`       | `0`       | `0`        |  
| `01`          | `00`          | `0`       | `1`       | `0`        |  
| `11`          | `10`          | `0`       | `1`       | `0`        |  
| `11`          | `11`          | `0`       | `0`       | `1`        |  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day04/
   ```  

2. **Compile and Simulate**  
   Use **Icarus Verilog** to compile and simulate the code:  
   ```bash
   iverilog -o mag_comp_tb magnitude_comparator.v tb_magnitude_comparator.v
   vvp mag_comp_tb
   ```  

3. **View Waveforms**  
   Open the generated `magnitude_comparator.vcd` file in **GTKWave**:  
   ```bash
   gtkwave magnitude_comparator.vcd
   ```  

---

## 💡 Key Learnings  

- **Relational Operators**: Learned to use Verilog's `<`, `>`, and `==` operators to compare binary numbers efficiently.  
- **Testbench Design**: Validated all combinations of `a` and `b` using nested loops in the testbench.  
- **Debugging**: Verified the correctness of outputs by analyzing waveforms in GTKWave.  

---

## 🔗 Resources  

- [Magnitude Comparator Basics](https://en.wikipedia.org/wiki/Magnitude_comparator)  
- [Verilog Relational Operators](https://verilogguide.readthedocs.io/en/latest/operators.html)  

---

## 🤝 Feedback  

If you have suggestions for improving this design or want to collaborate on future projects, feel free to reach out! Let’s connect on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs). 😊
