
---

# 🛠️ Day 32: Mealy Vending Machine in Verilog  

Welcome to Day 32 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Mealy Vending Machine** in Verilog. Vending machines are an excellent real-world application of **Finite State Machines (FSMs)**, commonly used in **transaction processing, automation, and embedded systems**.  

---

## ✨ Project Overview  

The **Mealy Vending Machine** operates based on a **Finite State Machine (FSM)**. It detects when a coin is inserted and a selection is made, then **dispenses** the item. Since it's a **Mealy Machine**, the output depends on both the **current state and the input**.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal  
  - `coin`: Coin input to trigger the vending process  
  - `select`: Selection input to finalize item selection  
- **Outputs:**  
  - `dispense`: Output signal indicating item dispensation  

---

## ⚙️ How It Works  

- Initially, the system is in the **IDLE state**.  
- If a **coin** is inserted, it moves to the **COIN state**.  
- When a selection (`select`) is made, it moves to the **DISPENSE state** and releases the item.  
- After dispensing, it returns to the **IDLE state**, ready for the next transaction.  

The **Mealy Machine** model ensures that outputs depend on **both current state and inputs**, making the design more responsive to user actions.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day32
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_vending_machine mealy_vending_machine.v mealy_vending_machine_tb.v
   vvp tb_vending_machine
   ```  

3. **View Waveforms**  
   Open the generated `vending_machine.vcd` file in GTKWave:  
   ```bash
   gtkwave vending_machine.vcd
   ```  

---

## 💡 Key Learnings  

- **FSM Design:** Explored the difference between **Mealy** and **Moore Machines** in sequential circuits.  
- **Real-Time Decision Making:** Learned how **Mealy FSMs** respond faster due to **input-dependent outputs**.  
- **State Transitions:** Gained deeper insights into **state-based vending machine logic**.  

---

## 🔗 Resources  

- [Finite State Machines (FSM)](https://en.wikipedia.org/wiki/Finite-state_machine)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
