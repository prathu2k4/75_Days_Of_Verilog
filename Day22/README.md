# 🛠️ Day 22: 4-bit Synchronous Counter in Verilog  

Welcome to Day 22 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-bit Synchronous Counter** in Verilog. This type of counter is widely used in **timing applications, frequency division, and digital state machines**.  

---

## ✨ Project Overview  

The **4-bit Synchronous Counter** increments its count on each **positive clock edge** (`posedge clk`). If the **reset** signal is high, the counter resets to `0`.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal to initialize the counter to `0`  
- **Outputs:**  
  - `q`: 4-bit counter output  

---

## ⚙️ How It Works  

- On **each positive edge of the clock (`clk`)**, the counter value **increments by 1**.  
- If the **reset** is **high**, the counter resets to `0`.  
- The counter **counts up from 0 to 15 (4-bit range: `0000` to `1111`)** and then wraps around to `0000`.  

### **Synchronous Operation**  
- Since the update happens on the **clock edge**, all flip-flops in the counter change simultaneously, reducing timing delays compared to asynchronous counters.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day22
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_sync_counter sync_counter.v sync_counter_tb.v
   vvp tb_sync_counter
   ```  

3. **View Waveforms**  
   Open the generated `sync_counter.vcd` file in GTKWave:  
   ```bash
   gtkwave sync_counter.vcd
   ```  

---

## 💡 Key Learnings  

- **Synchronous vs. Asynchronous Counters:** Learned how synchronous counters reduce timing issues by updating all flip-flops at the same clock edge.  
- **Clock-Driven Sequential Logic:** Understood how counters use **posedge clk** to increment values systematically.  
- **Simulation and Testing:** Developed a testbench to verify the **counting sequence** and **reset functionality**.  

---

## 🔗 Resources  

- [Synchronous Counter](https://en.wikipedia.org/wiki/Synchronous_counter)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
