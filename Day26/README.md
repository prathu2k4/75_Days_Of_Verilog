# 🛠️ Day 26: 8-bit Shift Register in Verilog  

Welcome to Day 26 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented an **8-bit Shift Register** in Verilog. Shift registers are widely used in **data storage, serial-to-parallel conversion, data buffering, and communication interfaces**.  

---

## ✨ Project Overview  

The **8-bit Shift Register** stores an 8-bit value and shifts the data **one bit to the left** on every **positive clock edge (`posedge clk`)**, inserting a new serial bit (`d`) at the least significant position.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal to initialize the register to `00000000`  
  - `d`: Serial data input  
- **Outputs:**  
  - `q`: 8-bit shift register output  

---

## ⚙️ How It Works  

- On **each positive clock edge (`posedge clk`)**, the register shifts its content **left by one bit**.  
- The **rightmost bit (`d`) is inserted** into the register, while the **leftmost bit is shifted out**.  
- If **reset** is high, the register is initialized to `00000000`.  

### **Example Shift Operation**  
If the initial state is `00000000` and we apply the serial input sequence **1 → 0 → 1 → 1 → 0 → 0 → 1 → 1**, the shift register evolves as follows:  
```
00000000  (Initial)
10000000  (Shift in 1)
01000000  (Shift in 0)
10100000  (Shift in 1)
11010000  (Shift in 1)
01101000  (Shift in 0)
00110100  (Shift in 0)
10011010  (Shift in 1)
11001101  (Shift in 1)
```
The shift register **continuously shifts new bits in from `d`**, moving older bits to the left.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day26
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_shift_register shift_register.v shift_register_tb.v
   vvp tb_shift_register
   ```  

3. **View Waveforms**  
   Open the generated `8bit_shift_register.vcd` file in GTKWave:  
   ```bash
   gtkwave 8bit_shift_register.vcd
   ```  

---

## 💡 Key Learnings  

- **Understanding Shift Registers:** Explored how shift registers work and their applications in **data storage and transmission**.  
- **Serial Data Processing:** Learned how to **process bit streams** by shifting data dynamically.  
- **Clock-Sensitive Sequential Logic:** Strengthened skills in **posedge clk-driven logic updates**.  

---

## 🔗 Resources  

- [Shift Registers](https://en.wikipedia.org/wiki/Shift_register)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
