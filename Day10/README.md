# 🛠️ Day 10: 4-Input Priority Encoder in Verilog  

Welcome to Day 10 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-Input Priority Encoder**, a combinational circuit that that converts the highest-priority active input into a binary code..  

---  

## ✨ Project Overview  

A **4-input priority encoder** is a combinational circuit that converts the highest priority active input into a binary code. If multiple inputs are active, the one with the highest priority (most significant) is encoded. Additionally, the module outputs a valid signal indicating whether any input is active.  

### **Inputs and Outputs**  
- **Inputs**:  
  - `in [3:0]`: 4 input lines, each representing a potential active signal.  
- **Outputs**:  
  - `out [1:0]`: 2-bit encoded output corresponding to the highest-priority active input.  
  - `valid`: A signal that indicates whether any input is active (`1`) or not (`0`).  

---  

## ⚙️ How It Works  

The **priority encoder** works as follows:  
- If `in[3]` is active, it outputs `out = 2'b11` and sets `valid = 1`.  
- If `in[2]` is active, it outputs `out = 2'b10` and sets `valid = 1`.  
- If `in[1]` is active, it outputs `out = 2'b01` and sets `valid = 1`.  
- If `in[0]` is active, it outputs `out = 2'b00` and sets `valid = 1`.  
- If no inputs are active, `valid` is `0`, and `out` defaults to `2'b00`.  

---  

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day09
   ```  

2. **Compile and Simulate**  
   ```bash
   iverilog -o priority_encoder priority_encoder.v testbench.v  
   vvp priority_encoder  
   ```  

3. **View Waveforms**  
   ```bash
   gtkwave priority_encoder.vcd  
   ```  

---  

## 💡 Key Learnings  

- Learned how to implement a priority encoder using conditional statements.  
- Understood how to generate a valid signal to indicate the presence of active inputs.  
- Observed the priority encoding functionality through testbench verification.  

---  

## 🔗 Resources  

- [What is a Priority Encoder?](https://en.wikipedia.org/wiki/Priority_encoder) 

---  

## 🤝 Feedback  

Have suggestions or want to collaborate? Feel free to reach out on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs). 😊  
