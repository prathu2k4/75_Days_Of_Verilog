 
---

# 🚦 Day 33: Traffic Light Controller in Verilog  

Welcome to Day 33 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Traffic Light Controller** using a **Finite State Machine (FSM)** in Verilog. This system is widely used in **traffic management, automation, and embedded systems**.  

---  

## ✨ Project Overview  

The **Traffic Light Controller** follows a predefined sequence of **Red → Green → Yellow → Red** with specific timing constraints. This FSM-based design ensures **efficient traffic flow and safe signal transitions**.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal to control state transitions  
  - `reset`: Active-high reset to initialize the system  
- **Outputs:**  
  - `light`: 2-bit encoded traffic light states  
    - `00` → Red  
    - `01` → Green  
    - `10` → Yellow  

---  

## ⚙️ How It Works  

- The **state transitions** are controlled by a **counter** that determines how long each light stays active.  
- The sequence follows:  
  ```  
  RED (5 cycles) → GREEN (3 cycles) → YELLOW (2 cycles) → RED (Repeat)  
  ```  
- If **reset** is high, the system starts in the **Red light state**.  
- The system advances automatically based on the clock cycle count.  

This ensures **structured and automated traffic control**. 🚦  

---  

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day33
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_traffic_light traffic_light_fsm.v traffic_light_fsm_tb.v
   vvp tb_traffic_light
   ```  

3. **View Waveforms**  
   Open the generated `traffic_light.vcd` file in GTKWave:  
   ```bash
   gtkwave traffic_light.vcd
   ```  

---  

## 💡 Key Learnings  

- **Finite State Machine (FSM) Design:** Explored **state-based traffic light control**.  
- **Clock-Driven State Transitions:** Managed timing with **counters and sequential logic**.  
- **Efficient Automation:** Designed a practical **traffic management system** using Verilog.  

---  

## 🔗 Resources  

- [FSM-Based Traffic Light Control](https://www.nandland.com/articles/fsm-traffic-light-controller.html)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---  

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving this design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to discuss digital design and Verilog projects. 😊  
