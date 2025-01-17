# 🛠️ Day 7: 4-Bit Subtractor Using 2's Complement  

Welcome to Day 7 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I designed a **4-bit subtractor** using the **2's complement method**, a commonly used approach in digital systems for performing subtraction by addition.  

---

## ✨ Project Overview  

The 4-bit subtractor computes the difference (`Diff`) between two 4-bit binary numbers (`A` and `B`) using the 2's complement of `B`. It also provides a `Borrow` output to indicate if the result is negative.  

### **Inputs and Outputs**  
- **Inputs**:  
  - `A`: 4-bit minuend  
  - `B`: 4-bit subtrahend  
- **Outputs**:  
  - `Diff`: 4-bit result of the subtraction  
  - `Borrow`: Indicates if the result is negative  

---

## ⚙️ How It Works  

### **2's Complement Method**  
1. Compute the 1's complement of `B` (invert each bit).  
2. Add `1` to the 1's complement to get the 2's complement of `B`.  
3. Add the 2's complement of `B` to `A`.  
4. If `A` is less than `B`, the `Borrow` output is set to `1`.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day07
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_four_bit_subtractor four_bit_subtractor.v tb_four_bit_subtractor.v
   vvp tb_four_bit_subtractor
   ```  

3. **View Waveforms**  
   Open the generated `four_bit_subtractor.vcd` file in GTKWave:  
   ```bash
   gtkwave four_bit_subtractor.vcd
   ```  

---

## 💡 Key Learnings  

- **2's Complement**: Leveraged the 2's complement method to perform subtraction in a compact design.  
- **Borrow Logic**: Used comparison logic to determine if the result was negative.  
- **Testbench Development**: Validated the design with multiple test cases, including edge cases.  

---

## 🔗 Resources  

- [2's Complement Basics](https://en.wikipedia.org/wiki/Two%27s_complement)

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
