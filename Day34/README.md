# 🛠️ Day 34: 4-bit Linear Feedback Shift Register (LFSR) in Verilog  

Welcome to Day 34 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-bit Linear Feedback Shift Register (LFSR)** in Verilog. LFSRs are widely used in **random number generation, pseudo-random pattern testing, cryptography, and digital communication systems**.  

---

## ✨ Project Overview  

The **4-bit LFSR** generates a pseudo-random sequence using a feedback mechanism. It relies on **XOR feedback** to shift bits through the register, creating a repetitive but complex sequence.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal to initialize the LFSR  
- **Outputs:**  
  - `out`: 4-bit LFSR output  

---

## ⚙️ How It Works  

- On **each positive clock edge (`posedge clk`)**, the bits **shift to the right**.  
- The feedback is generated using the **XOR of specific bits** (in this case, `out[3]` and `out[2]`).  
- If **reset** is high, the LFSR initializes to the **seed value** `1001`.  
- The feedback mechanism is as follows:  
  ```verilog
  out <= {out[2:0], out[3] ^ out[2]};
  ```
- The LFSR follows a **cyclic pseudo-random sequence** depending on the seed and feedback taps.  

This design is ideal for applications needing **pseudo-random number generation** or **pattern testing**.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day34
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_lfsr lfsr.v lfsr_tb.v
   vvp tb_lfsr
   ```  

3. **View Waveforms**  
   Open the generated `lfsr.vcd` file in GTKWave:  
   ```bash
   gtkwave lfsr.vcd
   ```  

---

## 💡 Key Learnings  

- **Understanding LFSRs:** Learned how LFSRs generate **pseudo-random sequences** using feedback.  
- **XOR Feedback Logic:** Explored how **XOR gates** create cyclic patterns in shift registers.  
- **Seed Value Impact:** Observed the impact of different **seed values** on the generated sequence.  

---

## 🔗 Resources  

- [Linear Feedback Shift Register](https://en.wikipedia.org/wiki/Linear-feedback_shift_register)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  