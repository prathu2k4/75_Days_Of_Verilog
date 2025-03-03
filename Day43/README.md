# ⏰ Day 43: Digital Clock in Verilog  

Welcome to Day 43 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Digital Clock** in Verilog. Digital clocks are essential in **timing circuits, real-time systems, and embedded applications**, providing accurate timekeeping.  

---  

## ✨ Project Overview  

The **Digital Clock** keeps track of **seconds, minutes, and hours** in a 24-hour format. It increments:  
- **Seconds** from `0 to 59`  
- **Minutes** from `0 to 59`  
- **Hours** from `0 to 23`  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal (simulated as 1Hz)  
  - `reset`: Active-high reset to initialize the clock  
- **Outputs:**  
  - `sec`: 6-bit register for seconds  
  - `min`: 6-bit register for minutes  
  - `hr`: 5-bit register for hours  

---  

## ⚙️ How It Works  

- **Second Counter:** Increments every clock cycle. When it reaches `59`, it resets to `0` and increments the **minute counter**.  
- **Minute Counter:** Increments after every `60 seconds`. When it reaches `59`, it resets to `0` and increments the **hour counter**.  
- **Hour Counter:** Increments after every `60 minutes`. When it reaches `23`, it resets to `0`.  
- The clock **resets to `00:00:00`** when the `reset` signal is active.  

This implementation provides a **basic digital clock** suitable for **real-time timing applications**.  

---  

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day43
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_digital_clock digital_clock.v digital_clock_tb.v
   vvp tb_digital_clock
   ```  

3. **View Waveforms**  
   Open the generated `digital_clock.vcd` file in GTKWave:  
   ```bash
   gtkwave digital_clock.vcd
   ```  

---  

## 💡 Key Learnings  

- **Time Counter Design:** Implemented **nested counters** for seconds, minutes, and hours.  
- **Modular Arithmetic in Verilog:** Learned how to **reset counters** after reaching maximum values.  
- **Real-Time Clock Logic:** Gained insights into designing a **24-hour digital clock** using Verilog.  

---  

## 🔗 Resources  

- [Digital Clock Design](https://en.wikipedia.org/wiki/Digital_clock)  
- [Counters in Verilog](https://www.chipverify.com/verilog/verilog-counter)  

---  

## 🤝 Feedback  

I'd love to hear your thoughts on this Digital Clock design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  