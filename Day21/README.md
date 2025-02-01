# 🛠️ Day 21: T Flip-Flop using D Flip-Flop in Verilog  

Welcome to Day 21 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **T Flip-Flop (Toggle Flip-Flop)** using a **D Flip-Flop** in Verilog. T Flip-Flops are widely used in counters, frequency dividers, and sequential circuits.  

---

## ✨ Project Overview  

The **T Flip-Flop** toggles its output state (`q`) on every clock cycle when `t = 1`. If `t = 0`, the output remains unchanged. The flip-flop also includes a reset input to initialize the output to `0`.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal to set `q = 0`  
  - `t`: Toggle input  
- **Outputs:**  
  - `q`: Flip-flop output that toggles when `t = 1`  

---

## ⚙️ How It Works  

- The **T Flip-Flop** is implemented using a D Flip-Flop logic.  
- The state of `q` updates on the **positive clock edge** (`posedge clk`).  
- If `reset` is **high**, `q` is reset to `0`.  
- If `t = 1`, the output toggles (`q <= ~q`).  
- If `t = 0`, `q` retains its previous value.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day21
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_t_ff t_ff.v t_ff_tb.v
   vvp tb_t_ff
   ```  

3. **View Waveforms**  
   Open the generated `t_ff.vcd` file in GTKWave:  
   ```bash
   gtkwave t_ff.vcd
   ```  

---

## 💡 Key Learnings  

- **T Flip-Flop Implementation:** Designed a toggle flip-flop using a D Flip-Flop concept.  
- **Sequential Circuit Behavior:** Observed how `q` toggles only when `t = 1` and retains its value otherwise.  
- **Clock and Reset Handling:** Understood the role of clock edges and reset signals in sequential logic.  

---

## 🔗 Resources  

- [Flip-Flop Types](https://en.wikipedia.org/wiki/Flip-flop_(electronics))  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
