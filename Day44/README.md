# 🌡️ Day 44: Temperature Alert System in Verilog  

Welcome to Day 44 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Temperature Alert System** in Verilog. This digital system monitors temperature levels and triggers an alert when the value exceeds a predefined threshold, making it useful for **safety systems, HVAC controls, and industrial monitoring.**  

---

## ✨ Project Overview  

The **Temperature Alert System** compares an 8-bit temperature input with a set threshold. If the temperature **meets or exceeds** the threshold, an **alert signal** is triggered. This design is vital for **overheat protection** in electronic devices and industrial equipment.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `temperature`: 8-bit temperature value  
  - `threshold`: 8-bit threshold value  
- **Output:**  
  - `alert`: High (`1`) when temperature ≥ threshold, otherwise Low (`0`)  

---

## ⚙️ How It Works  

- The module continuously **compares** the temperature with the threshold.  
- If the **temperature is greater than or equal to the threshold**, the alert is triggered.  
- Otherwise, the alert remains **inactive** (`0`).  

This design is useful for **temperature-sensitive systems** requiring immediate action during overheating scenarios.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day44
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_temperature_alert temperature_alert.v temperature_alert_tb.v
   vvp tb_temperature_alert
   ```  

3. **View Waveforms**  
   Open the generated `temperature_alert.vcd` file in GTKWave:  
   ```bash
   gtkwave temperature_alert.vcd
   ```  

---

## 💡 Key Learnings  

- **Comparator Logic in Verilog:** Implemented digital comparators to compare 8-bit values.  
- **Threshold Monitoring:** Designed a threshold-based alert mechanism, applicable in **real-time monitoring systems.**  
- **Digital Safety Systems:** Gained insights into **safety-critical designs** for over-temperature protection.  

---

## 🔗 Resources  

- [Digital Comparators](https://www.electronics-tutorials.ws/combination/comb_4.html)  
- [Verilog Basics](https://www.chipverify.com/verilog/verilog-tutorial)  

---

## 🤝 Feedback  

I'd love to hear your thoughts on this Temperature Alert System! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊   
