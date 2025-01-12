# 🛠️ Day 2: BCD Adder in Verilog  

Welcome to Day 2 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **BCD (Binary Coded Decimal) Adder**, a key combinational circuit used in arithmetic operations with BCD numbers. This design ensures that the output remains a valid BCD value by applying a correction factor when necessary.  

---

## ✨ Project Overview  

The **BCD Adder** adds two 4-bit BCD numbers (`a` and `b`) and an optional carry input (`cin`). If the intermediate sum exceeds the valid BCD range (`9`), a correction factor is applied to adjust the result and generate the correct carry-out.  

### **Inputs and Outputs**  
- **Inputs**:  
  - `a[3:0]`: First 4-bit BCD input  
  - `b[3:0]`: Second 4-bit BCD input  
  - `cin`: Carry-in  
- **Outputs**:  
  - `sum[3:0]`: Corrected 4-bit BCD sum  
  - `cout`: Carry-out  

---

## ⚙️ How It Works  

1. **Intermediate Sum Calculation**:  
   Compute the raw sum of `a`, `b`, and `cin`.  
   `temp_sum` =  `a` + `b` + `cin`

2. **Correction Logic**:  
   - If `temp_sum > 9`, add a correction factor of `6` (i.e., `4'b0110`) to bring the result within the BCD range.  
   - Generate a carry-out for sums exceeding `9`.  

3. **Final Outputs**:  
   - The corrected sum is calculated by:  
     `sum` = `temp_sum[3:0]` + `correction`
   - The final carry-out is determined as:  
     `cout` = `temp_sum[4]` or `carry_correction`  

---

## 📊 Truth Table for Correction  

| `temp_sum` | Correction Added (`4'b0110`) | Adjusted Sum | Carry Out (`cout`) |
|------------|------------------------------|--------------|--------------------|
| 0 - 9      | No                          | `temp_sum`   | 0                  |
| 10 - 15    | Yes                         | Adjusted     | 1                  |

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day02/BCD Adder
   ```

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o bcd_adder_tb bcd_adder.v testbench.v
   vvp bcd_adder_tb
   ```

3. **View Waveforms**  
   Open the generated `dumpfile.vcd` in GTKWave:  
   ```bash
   gtkwave dumpfile.vcd
   ```  

---

## 💡 Key Learnings  

- **BCD Arithmetic**: Learned how to handle BCD inputs and ensure the output stays within the valid BCD range using correction logic.  
- **Conditional Logic in Verilog**: Utilized conditional assignments (`? :`) to implement correction and carry logic efficiently.  
- **Simulation and Debugging**: Tested and validated the design with edge cases to ensure correctness.  

---

## 🛠️ Tools Used  

- **Icarus Verilog**: For compiling and simulating Verilog files.  
- **GTKWave**: To visualize waveform outputs.  

---

## 🔗 Resources  

- [Understanding BCD Arithmetic](https://en.wikipedia.org/wiki/Binary-coded_decimal)  
- [Verilog HDL Basics](https://en.wikipedia.org/wiki/Verilog)  

---

## 🤝 Feedback  

Got suggestions or feedback? Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs). I’d love to hear your thoughts or collaborate on similar projects! 💡  

--- 

Let me know if you need additional details or edits! 😊
