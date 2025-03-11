### 📌 **Day 46: PWM-Based Motor Controller** 🚀  

#### **Project Overview**  
Today, I implemented a **Motor Controller** using **PWM (Pulse Width Modulation)** in Verilog! ⚙️ This module allows precise **motor speed control** based on an adjustable duty cycle.  

### **Inputs and Outputs**  
🔹 **Inputs:**  
- `clk` → System clock  
- `enable` → Motor enable signal  
- `speed` → 8-bit speed control (0-255)  

🔹 **Output:**  
- `pwm_out` → PWM signal for motor speed control  

### **How It Works**  
- The **PWM signal** is generated based on an **8-bit counter** and a user-defined **speed value**.  
- If `enable = 1`, the PWM signal is modulated to control the **motor speed**.  
- If `enable = 0`, the motor is **stopped** by setting `pwm_out = 0`.  

### **Simulation Steps**  

# Clone the repository

```
git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
cd 75_Days_Of_Verilog/Day46_Motor_Controller
```

# Run the simulation

```
iverilog -o motor_controller_tb motor_controller_tb.v motor_controller.v
vvp motor_controller_tb
```

# View waveform

```
gtkwave motor_controller.vcd
```

### **Key Learnings**  
✅ **PWM for Speed Control:** Learned how to **modulate motor speed** using varying duty cycles.  
✅ **Enable Control:** Implemented an **on/off switch** to enable/disable motor operation.  
✅ **Hardware-Level Speed Regulation:** Explored real-world **motor control techniques** with Verilog.  

### **Resources**  
📖 PWM Basics → [Link](https://en.wikipedia.org/wiki/Pulse-width_modulation)  
📖 Motor Control with PWM → [Link](https://www.electronics-tutorials.ws/pwm/pwm.html)  

### **Feedback & Suggestions**  
Would love to hear your thoughts! 💡 Let’s connect on [LinkedIn](https://www.linkedin.com/in/prathu2k4) and discuss more! 🚀
