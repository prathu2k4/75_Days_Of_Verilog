# 🛠️ Day 28: Clock Divider in Verilog  

Welcome to Day 28 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Clock Divider** in Verilog. This circuit is essential for generating lower-frequency clock signals used in digital systems like microcontrollers, counters, and timing-based applications.  

---  

## ✨ Project Overview  

A **Clock Divider** takes a high-frequency clock signal and generates a lower-frequency clock output. It is often used in digital circuits to reduce the clock speed for sequential logic operations.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: High-frequency clock input  
  - `reset`: Active-high reset signal  
- **Outputs:**  
  - `clk_out`: Divided clock output  

---  

## ⚙️ How It Works  

- A **3-bit counter** keeps track of the clock cycles.  
- When the counter reaches `3'd3`, it **toggles** the `clk_out` signal and resets the counter.  
- The `reset` signal forces `clk_out` to `0` and resets the counter.  
- The result is a clock signal with a frequency **four times slower** than the original `clk`.  

---  

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day28
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_clock_divider clock_divider.v clock_divider_tb.v
   vvp tb_clock_divider
   ```  

3. **View Waveforms**  
   Open the generated `clock_divider.vcd` file in GTKWave:  
   ```bash
   gtkwave clock_divider.vcd
   ```  

---  

## 💡 Key Learnings  

- **Clock Frequency Division:** Learned how to generate lower-frequency clock signals.  
- **Counter-Based Clock Division:** Used a counter to toggle `clk_out` at specific intervals.  
- **Reset Control:** Ensured proper initialization and controlled operation of the clock divider.  

---  

## 🔗 Resources  

- [Clock Dividers in Verilog](https://www.chipverify.com/verilog/verilog-clock-divider)  
- [Digital Clocking Techniques](https://en.wikipedia.org/wiki/Clock_signal)  

---  

## 🤝 Feedback  

Let me know your thoughts or suggestions! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to discuss and collaborate on exciting Verilog projects. 😊  
