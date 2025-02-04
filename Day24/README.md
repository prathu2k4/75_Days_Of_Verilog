# 🛠️ Day 24: 4-bit Johnson Counter in Verilog  

Welcome to Day 24 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-bit Johnson Counter** in Verilog. Also known as a **Twisted Ring Counter**, this sequential circuit is widely used in **state machines, pattern generators, and frequency dividers** due to its predictable cyclic sequence.  

---

## ✨ Project Overview  

The **4-bit Johnson Counter** shifts its bits to the right and inverts the last bit before feeding it back into the first position. This creates a unique **8-state sequence** before repeating.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal to initialize the counter to `0000`  
- **Outputs:**  
  - `q`: 4-bit Johnson Counter output  

---

## ⚙️ How It Works  

- On **each positive clock edge (`posedge clk`)**, the counter shifts its bits to the right.  
- The **leftmost bit** (`q[0]`) receives the **inverted value** of the **rightmost bit** (`~q[0]`).  
- If **reset** is high, the counter initializes to `0000`.  
- The **Johnson Counter follows an 8-state sequence**:  
  ```
  0000 → 1000 → 1100 → 1110 → 1111 → 0111 → 0011 → 0001 → (Repeat)
  ```

This unique behavior makes it useful for **sequence generation** in digital applications.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day24
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_johnson_counter johnson_counter.v johnson_counter_tb.v
   vvp tb_johnson_counter
   ```  

3. **View Waveforms**  
   Open the generated `johnson_counter.vcd` file in GTKWave:  
   ```bash
   gtkwave johnson_counter.vcd
   ```  

---

## 💡 Key Learnings  

- **Understanding Johnson Counters:** Explored how Johnson Counters differ from ring counters by introducing a **twist** in feedback.  
- **Sequential Circuit Behavior:** Observed the **unique 8-state pattern** and how feedback affects shifting.  
- **Clock-Driven Logic:** Strengthened skills in working with **posedge clk** for synchronous updates.  

---

## 🔗 Resources  

- [Johnson Counter](https://en.wikipedia.org/wiki/Johnson_counter)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
