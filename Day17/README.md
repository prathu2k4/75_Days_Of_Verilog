# 🛠️ Day 17: Priority Encoder in Verilog

Welcome to Day 17 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Priority Encoder** in Verilog. This circuit is crucial in digital systems, converting a set of inputs into a binary representation of the highest-priority active input.

---

## ✨ Project Overview  

The **Priority Encoder** processes an 8-bit input vector and outputs a 3-bit binary representation of the highest-priority active input. If multiple inputs are high, the highest-priority input (most significant bit) is encoded.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `in`: 8-bit input vector.
- **Outputs:**  
  - `out`: 3-bit binary representation of the highest-priority active input.

---

## ⚙️ How It Works  

- The priority encoder uses a `casez` statement to match input patterns, with `?` as a wildcard.  
- The priority is assigned such that the most significant bit (`in[7]`) has the highest priority, and the least significant bit (`in[0]`) has the lowest priority.  
- If no inputs are active, the output defaults to an undefined state (`3'bxxx`).  

Logic:
- If `in[7]` is high, `out = 3'b111`.
- If `in[6]` is high and `in[7]` is low, `out = 3'b110`.
- This pattern continues down to `in[0]`.

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day17
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_priority_encoder priority_encoder.v priority_encoder_tb.v
   vvp tb_priority_encoder
   ```  

3. **View Waveforms**  
   Open the generated `priority_encoder.vcd` file in GTKWave:  
   ```bash
   gtkwave priority_encoder.vcd
   ```  

---

## 💡 Key Learnings  

- **Priority Encoding Logic:** Gained experience implementing an 8-to-3 priority encoder with the `casez` construct for flexible pattern matching.  
- **Simulation with Testbench:** Tested the encoder's behavior for various input combinations, verifying its correct functionality.  
- **Wildcard Matching in Verilog:** Learned to use `?` in `casez` for simplified logic representation.  

---

## 🔗 Resources  

- [Priority Encoder](https://en.wikipedia.org/wiki/Priority_encoder) 

---

## 🤝 Feedback  

Have suggestions or feedback? Feel free to share your thoughts! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to discuss or collaborate on exciting projects. 😊
