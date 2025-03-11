# ⚡ Day 45: PWM Generator in Verilog 🎛️  

Welcome to Day 45 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **PWM (Pulse Width Modulation) Generator** in Verilog. PWM is widely used for **motor speed control, LED dimming, and communication systems** by varying the duty cycle of a digital pulse.  

---

## ✨ Project Overview  

The **PWM Generator** produces a digital pulse with a variable duty cycle based on an 8-bit input. It can be used for **analog signal control** by modulating the pulse width.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `duty`: 8-bit duty cycle (0-255)  
- **Output:**  
  - `pwm_out`: PWM signal output  

---

## ⚙️ How It Works  

- The design uses an **8-bit counter** that increments with each clock pulse.  
- The `pwm_out` signal is set to `1` when the counter is less than the `duty` value and `0` otherwise.  
- The **duty cycle** (proportion of `1`s in the signal) is directly controlled by the `duty` input. For example:  
  - `duty = 64` → 25% duty cycle  
  - `duty = 128` → 50% duty cycle  
  - `duty = 192` → 75% duty cycle  
  - `duty = 255` → 100% duty cycle  

This approach generates a **PWM signal** suitable for controlling power delivery to devices like motors and LEDs.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day45
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_pwm_generator pwm_generator.v pwm_generator_tb.v
   vvp tb_pwm_generator
   ```  

3. **View Waveforms**  
   Open the generated `pwm_generator.vcd` file in GTKWave:  
   ```bash
   gtkwave pwm_generator.vcd
   ```  

---

## 💡 Key Learnings  

- **PWM Basics:** Learned how to generate a PWM signal by comparing a counter with a duty cycle value.  
- **Duty Cycle Control:** Explored how varying the duty cycle changes the **average power output**.  
- **Digital-to-Analog Conversion:** Understood the use of PWM for **analog-like control** in digital systems.  

---

## 🔗 Resources  

- [Pulse Width Modulation (PWM)](https://en.wikipedia.org/wiki/Pulse-width_modulation)  
- [Verilog Counters](https://www.chipverify.com/verilog/verilog-counters)  

---

## 🤝 Feedback  

I'd love to hear your thoughts on this PWM Generator design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  