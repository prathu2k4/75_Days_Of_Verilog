# 🛠️ Day 15: Barrel Shifter

Welcome to Day 15 of my **75 Days of Verilog Coding Challenge**! 🎉

Today, I designed a **4-bit Barrel Shifter** in Verilog, a versatile digital circuit used to shift the bits of a data word in multiple directions, making it a fundamental component in many digital systems like ALUs (Arithmetic Logic Units).

---

## ✨ Project Overview

The **Barrel Shifter** takes a 4-bit input and shifts it in one of four possible directions based on the 2-bit shift control signal:
- `00`: No shift
- `01`: Shift left by 1 bit
- `10`: Shift left by 2 bits
- `11`: Circularly shift by 3 bits

### **Inputs and Outputs**  
- **Inputs**:  
  - `in`: 4-bit input data  
  - `shift`: 2-bit control signal for the shift direction  
- **Outputs**:  
  - `out`: 4-bit shifted output  

---

## ⚙️ How It Works

- The **Barrel Shifter** performs the shifting operation based on the value of the `shift` signal.
- It uses a combination of conditional assignments (`? :`) to decide the new value of the shifted output.

---

## 🛠️ Simulation Steps

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day15
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o barrel_shifter_tb barrel_shifter.v barrel_shifter_tb.v
   vvp barrel_shifter_tb  
   ```  

3. **View Waveforms**  
   Open the generated `barrel_shifter.vcd` file in GTKWave:  
   ```bash
   gtkwave barrel_shifter.vcd
   ```  
---

## 💡 Key Learnings

- **Barrel Shifting Logic**: Learned how to efficiently implement a barrel shifter for multiple shift operations.  
- **Shift Control**: Mastered the use of control signals to manage various shift operations.
- **Testbench Creation**: Validated the design with multiple test cases for different shifts.

---

## 🔗 Resources  

- [Barrel Shifter Explanation](https://en.wikipedia.org/wiki/Barrel_shifter)

---

## 🤝 Feedback

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊
