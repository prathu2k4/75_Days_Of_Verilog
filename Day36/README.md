# 🛠️ Day 36: Stopwatch in Verilog  

Welcome to Day 36 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Stopwatch** in Verilog. This digital stopwatch is commonly used in **timing applications**, **counters**, and **digital clocks**.  

---

## ✨ Project Overview  

The **Stopwatch** keeps track of seconds and can be started, stopped, and reset. It uses a simple **toggle mechanism** to control the counting state.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset to initialize the stopwatch  
  - `start_stop`: Toggles the counting state (start/stop)  
- **Outputs:**  
  - `seconds`: 6-bit output to count up to 59 seconds  

---

## ⚙️ How It Works  

- The stopwatch **increments the seconds** on each positive clock edge (`posedge clk`) when it is in the running state.  
- **Toggle Mechanism:** The `start_stop` input toggles the `running` state, controlling whether the counter increments.  
- If **reset** is high, the stopwatch **resets to 0 seconds** and stops running.  
- The counter **rolls over to 0** after reaching 59 seconds.  

This design is suitable for **basic timing circuits** and demonstrates how to control states using toggling logic.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day36
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_stopwatch stopwatch.v stopwatch_tb.v
   vvp tb_stopwatch
   ```  

3. **View Waveforms**  
   Open the generated `stopwatch.vcd` file in GTKWave:  
   ```bash
   gtkwave stopwatch.vcd
   ```  

---

## 💡 Key Learnings  

- **Toggle Mechanism:** Learned to implement start/stop functionality using a toggle flip-flop approach.  
- **Sequential Counting Logic:** Gained insights into designing counters with rollover conditions.  
- **Clock-Driven Control:** Enhanced skills in managing states based on clock edges and input triggers.  

---

## 🔗 Resources  

- [Stopwatch Design](https://en.wikipedia.org/wiki/Stopwatch)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  