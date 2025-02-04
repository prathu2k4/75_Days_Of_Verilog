# 🛠️ Day 23: 4-bit Asynchronous Counter in Verilog  

Welcome to Day 23 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-bit Asynchronous Counter** in Verilog. Unlike synchronous counters, where all flip-flops update simultaneously, asynchronous counters have a **ripple effect**, making them simpler but slower in high-speed circuits.  

---

## ✨ Project Overview  

The **4-bit Asynchronous Counter** increments its count on each **negative clock edge** (`negedge clk`). If the **reset** signal is high, the counter resets to `0`.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal to initialize the counter to `0`  
- **Outputs:**  
  - `q`: 4-bit counter output  

---

## ⚙️ How It Works  

- On each **negative clock edge (`negedge clk`)**, the counter value **increments by 1**.  
- If **reset is high**, the counter resets to `0`.  
- The counter **counts from 0 to 15 (4-bit range: `0000` to `1111`)** and then wraps around to `0000`.  

### **Asynchronous Operation**  
- Each flip-flop **triggers based on the output of the previous one**, causing a **ripple effect**.  
- This makes asynchronous counters **slower** than synchronous counters but **simpler in design**.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day23
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_async_counter async_counter.v async_counter_tb.v
   vvp tb_async_counter
   ```  

3. **View Waveforms**  
   Open the generated `async_counter.vcd` file in GTKWave:  
   ```bash
   gtkwave async_counter.vcd
   ```  

---

## 💡 Key Learnings  

- **Asynchronous vs. Synchronous Counters:** Learned the key differences and trade-offs between ripple and synchronous counters.  
- **Negative Edge Triggering:** Observed how **negedge clk** drives the counting process.  
- **Testing Ripple Effects:** Simulated and analyzed the **propagation delay** in asynchronous counter circuits.  

---

## 🔗 Resources  

- [Asynchronous Counter](https://en.wikipedia.org/wiki/Asynchronous_counter)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
