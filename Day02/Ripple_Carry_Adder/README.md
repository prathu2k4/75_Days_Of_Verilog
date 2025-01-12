# 🛠️ Day 2: Ripple Carry Adder in Verilog  

Welcome to Day 2 of my **75 Days of Verilog Coding Challenge**! 🎉  

## ✨ Project Overview  

The **Ripple Carry Adder** is designed to add two 4-bit binary numbers (`a` and `b`) along with a carry input (`cin`). The result is a 4-bit sum (`sum`) and a carry-out (`cout`).  

**Inputs and Outputs**:  
- **Inputs**:  
  - `a[3:0]`: First 4-bit binary input  
  - `b[3:0]`: Second 4-bit binary input  
  - `cin`: Carry-in  
- **Outputs**:  
  - `sum[3:0]`: 4-bit binary sum  
  - `cout`: Carry-out  

---

## 🧠 Logic  

The RCA uses **four cascaded full adders**, where the carry from one stage ripples into the next stage.  

Each **full adder** computes:  
- `sum = a ⊕ b ⊕ cin`  
- `cout = (a ∧ b) ∨ (b ∧ cin) ∨ (cin ∧ a)`  

---

## ⚙️ How to Run  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day02-RippleCarryAdder
   ```

2. **Compile and Simulate**  
   Use **Icarus Verilog** to compile and simulate:  
   ```bash
   iverilog -o rca_tb ripple_carry_adder.v testbench.v
   vvp rca_tb
   ```

3. **View Waveforms**  
   Open the `dumpfile.vcd` in GTKWave to visualize the operation:  
   ```bash
   gtkwave dumpfile.vcd
   ```

---

## 📊 Example  

Let’s consider an example where:  
- `a = 4'b0101` (Decimal 5)  
- `b = 4'b0011` (Decimal 3)  
- `cin = 1`  

The result will be:  
- `sum = 4'b1001` (Decimal 9)  
- `cout = 0`  

---

## 💡 Key Learnings  

- **Ripple Carry Logic**: Understood how carry propagates through full adders.  
- **Binary Addition**: Designed and validated multi-bit binary addition.  
- **Testbench**: Tested all 4-bit binary combinations for accuracy.  

---

## 🛠️ Tools Used  

- **Icarus Verilog**: For compiling and simulating Verilog files.  
- **GTKWave**: For waveform visualization.  

---

## 🔗 Resources  

- [Ripple Carry Adder Overview](https://en.wikipedia.org/wiki/Adder_(electronics)#Ripple-carry_adder)  
- [Verilog HDL Basics](https://en.wikipedia.org/wiki/Verilog)  

---

## 🚀 Next Steps  

I’m excited to explore more arithmetic circuits in the coming days, building on what I’ve learned today. Stay tuned for more updates! 😊  

---

## 🤝 Feedback  

If you have any suggestions or feedback, feel free to reach out to me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs). Let’s collaborate and grow together! 💪  

---  

Let me know if you need any other adjustments! 😊
