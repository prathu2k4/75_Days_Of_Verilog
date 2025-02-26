# 🛠️ Day 35: Digital Lock System in Verilog  

Welcome to Day 35 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Digital Lock System** in Verilog. This design simulates a basic **password-protected lock** mechanism commonly used in **digital security systems**.  

---

## ✨ Project Overview  

The **Digital Lock System** checks a 4-bit input key and compares it with a predefined password. If the input matches the password, the lock is **unlocked**. Otherwise, it remains **locked**.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset to initialize the system  
  - `key`: 4-bit input key to be compared  
- **Outputs:**  
  - `unlock`: High when the key matches the predefined password, otherwise low  

---

## ⚙️ How It Works  

- The system continuously checks the **4-bit input key** on each positive clock edge (`posedge clk`).  
- If the **key** matches the predefined **password (`1010`)**, the `unlock` signal goes high.  
- If the key is incorrect, the `unlock` signal remains low.  
- The system can be **reset** to its initial state using the `reset` signal.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day35
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_digital_lock digital_lock.v digital_lock_tb.v
   vvp tb_digital_lock
   ```  

3. **View Waveforms**  
   Open the generated `digital_lock.vcd` file in GTKWave:  
   ```bash
   gtkwave digital_lock.vcd
   ```  

---

## 💡 Key Learnings  

- **Password Matching Logic:** Implemented a **combinational comparison** to check the input key.  
- **State Control with Reset:** Ensured that the lock resets to the initial state on receiving a high `reset` signal.  
- **Digital Security Design:** Gained insights into how digital lock systems operate in embedded security.  

---

## 🔗 Resources  

- [Digital Lock Systems](https://en.wikipedia.org/wiki/Electronic_lock)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  