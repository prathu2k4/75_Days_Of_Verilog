# 🛠️ Day 6: 4-Bit Signed Comparator in Verilog  

Welcome to Day 6 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I designed and tested a **4-Bit Signed Comparator**, which compares two signed 4-bit inputs (`A` and `B`) and determines their relationship (greater than, less than, or equal). This circuit is essential for digital systems that need to handle signed number comparisons.    

---

## ✨ Project Overview  

The **4-Bit Signed Comparator** takes two signed 4-bit inputs (`A` and `B`) and determines if:  
- `GT`: Indicates if `A > B`.  
- `LT`: Indicates if `A < B`.  
- `EQ`: Indicates if `A == B`. 

### **Inputs and Outputs**  
- **Inputs**:  
  - `A[3:0]`: 4-bit signed input  
  - `B[3:0]`: 4-bit signed input  
- **Outputs**:  
  - `GT`: High when `A > B`  
  - `LT`: High when `A < B`  
  - `EQ`: High when `A == B`  

---

## ⚙️ How It Works  

The comparator checks the relationship between two signed numbers by evaluating:  
1. If `A > B`: Set `GT` to 1, and `LT` and `EQ` to 0.  
2. If `A < B`: Set `LT` to 1, and `GT` and `EQ` to 0.  
3. If `A == B`: Set `EQ` to 1, and `GT` and `LT` to 0.  

The comparison logic is implemented using the `always @(*)` block in Verilog, ensuring continuous evaluation whenever the inputs `A` or `B` change.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day06
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o SignedComparator_tb SignedComparator.v SignedComparator_tb.v
   vvp SignedComparator_tb
   ```  

3. **View Waveforms**  
   Open the generated `SignedComparator.vcd` file in GTKWave:  
   ```bash
   gtkwave SignedComparator.vcd
   ```  

---

## 💡 Key Learnings  

- **Signed Numbers in Verilog**: Used `signed` keyword to handle signed 4-bit integers.  
- **Comparative Logic**: Implemented greater than (`>`), less than (`<`), and equal to (`==`) operations for signed integers.  
- **Testbench Design**: Covered edge cases, including positive and negative values.  
- **Waveform Analysis**: Validated the behavior of the signed comparator across multiple test cases using GTKWave.  

---

## 🔗 Resources  

- [Signed Numbers in Verilog](https://verilogguide.readthedocs.io/en/latest/data_types.html#signed-and-unsigned)  
- [Comparator Basics](https://en.wikipedia.org/wiki/Comparator_(computing))  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving this design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
