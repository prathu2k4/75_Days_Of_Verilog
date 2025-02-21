# 🛠️ Day 29: Frequency Counter in Verilog  

Welcome to Day 29 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Frequency Counter**, a fundamental circuit used in **signal processing, communication systems, and digital measurement tools**.  

---  

## ✨ Project Overview  

The **Frequency Counter** counts the number of pulses in an incoming signal (`signal_in`) within a given clock cycle. This is useful in measuring the frequency of an unknown signal.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: System clock  
  - `signal_in`: Input signal to measure  
  - `reset`: Resets the count to zero  
- **Output:**  
  - `count`: 8-bit output storing the number of `signal_in` pulses detected  

---  

## ⚙️ How It Works  

- **Counting Mechanism:**  
  - On every **posedge clk**, if `signal_in` is high, the counter increments.  
  - If `reset` is high, the counter resets to zero.  

- **Clock and Signal Handling:**  
  - A **5-time unit clock period** drives the system.  
  - A **7-time unit signal period** is used to test the frequency measurement.  

---  

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day29
   ```  

2. **Compile and Simulate**  
   ```bash
   iverilog -o tb_frequency_counter frequency_counter.v frequency_counter_tb.v
   vvp tb_frequency_counter
   ```  

3. **View Waveforms**  
   ```bash
   gtkwave frequency_counter.vcd
   ```  

---  

## 💡 Key Learnings  

- **Frequency Measurement:** Learned how to count pulses within a clock cycle to determine signal frequency.  
- **Edge-Triggered Logic:** Implemented a counter that updates on every **positive clock edge**.  
- **Testbench Development:** Used different clock and signal frequencies to test the design.  

---  

## 🔗 Resources  

- [Frequency Counter Basics](https://en.wikipedia.org/wiki/Frequency_counter)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---  

## 🤝 Feedback  

Have suggestions or improvements? Let's connect on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs)! Looking forward to more exciting Verilog projects ahead. 😊  
