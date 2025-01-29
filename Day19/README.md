# 🛠️ Day 19: Traffic Light Controller in Verilog  

Welcome to Day 19 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Traffic Light Controller** in Verilog. This module is a simple yet practical application that simulates the behavior of a traffic light system based on different states.  

---

## ✨ Project Overview  

The **Traffic Light Controller** takes a 2-bit `state` input and generates a 3-bit `light` output to control the traffic lights:  
- `state = 00`: Red light is ON (`light = 100`).  
- `state = 01`: Yellow light is ON (`light = 010`).  
- `state = 10`: Green light is ON (`light = 001`).  
- `state = 11`: All lights are OFF (`light = 000`).  

### **Inputs and Outputs**  
- **Inputs:**  
  - `state`: 2-bit input representing the current state of the traffic light.  
- **Outputs:**  
  - `light`: 3-bit output representing the status of Red, Yellow, and Green lights.  

---

## ⚙️ How It Works  

- The module uses a `case` statement to assign the `light` output based on the `state` input.  
- Each bit in the `light` output corresponds to a specific light:  
  - MSB (`light[2]`): Red  
  - Middle bit (`light[1]`): Yellow  
  - LSB (`light[0]`): Green  

Example behavior:  
- For `state = 2'b00`, only the Red light is ON (`light = 3'b100`).  
- For `state = 2'b11`, all lights are OFF (`light = 3'b000`).  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day19
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_traffic_light_controller traffic_light_controller.v traffic_light_controller_tb.v
   vvp tb_traffic_light_controller
   ```  

3. **View Waveforms**  
   Open the generated `traffic_light_controller.vcd` file in GTKWave:  
   ```bash
   gtkwave traffic_light_controller.vcd
   ```  

---

## 💡 Key Learnings  

- **Case Statement Usage:** Gained experience in using the `case` statement for efficient conditional logic in Verilog.  
- **Traffic Light Simulation:** Learned how to represent real-world systems, such as traffic lights, in hardware design.  
- **Testbench Development:** Validated the design with all possible state inputs to ensure correct behavior.  

---

## 🔗 Resources  

- [Traffic Light Controller Design](https://en.wikipedia.org/wiki/Traffic_light_control_and_coordination)  
- [Verilog Case Statement](https://www.chipverify.com/verilog/verilog-case-statement)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
