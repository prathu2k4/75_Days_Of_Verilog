# 🛠️ Day 25: 4-bit Ring Counter in Verilog  

Welcome to Day 25 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-bit Ring Counter** in Verilog. This sequential circuit is widely used in **circular shift registers, sequence generators, and state machines**.  

---

## ✨ Project Overview  

The **4-bit Ring Counter** operates by shifting a single high bit (`1`) through the register in a circular pattern. It follows a **fixed repetitive sequence** of states.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal to initialize the counter  
- **Outputs:**  
  - `q`: 4-bit Ring Counter output  

---

## ⚙️ How It Works  

- On **each positive clock edge (`posedge clk`)**, the bits **shift to the right**.  
- The **leftmost bit (`q[3]`) is fed back into the rightmost bit (`q[0]`)** to maintain the ring pattern.  
- If **reset** is high, the counter initializes to `1000`.  
- The **Ring Counter follows a 4-state sequence**:  
  ```
  1000 → 0100 → 0010 → 0001 → (Repeat)
  ```

This ensures a unique **cyclic pattern** that is ideal for **state-based applications**.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day25
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_ring_counter ring_counter.v ring_counter_tb.v
   vvp tb_ring_counter
   ```  

3. **View Waveforms**  
   Open the generated `ring_counter.vcd` file in GTKWave:  
   ```bash
   gtkwave ring_counter.vcd
   ```  

---

## 💡 Key Learnings  

- **Understanding Ring Counters:** Explored how ring counters create **sequential state transitions** with cyclic behavior.  
- **Shift Register Behavior:** Learned how shifting and feedback create a continuous state cycle.  
- **Clock-Driven Logic:** Strengthened skills in handling **posedge clk** to maintain sequential order.  

---

## 🔗 Resources  

- [Ring Counter](https://en.wikipedia.org/wiki/Ring_counter)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
