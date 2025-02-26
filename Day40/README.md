# 🛠️ Day 40: Control Logic Unit in Verilog  

Welcome to Day 40 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Control Logic Unit** in Verilog. This unit is essential in processors as it generates **control signals** based on the given opcode, orchestrating the operations of other components like ALUs and memory units.  

---

## ✨ Project Overview  

The **Control Logic Unit** decodes the opcode to generate control signals, guiding other modules to perform specific tasks such as **Load, Store, Add, and Subtract**.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset to initialize the control unit  
  - `opcode`: 4-bit instruction code determining the operation  
- **Output:**  
  - `control_signals`: 3-bit output controlling other modules  

---

## ⚙️ How It Works  

- The control unit checks the **opcode** and generates the corresponding **control signals**:  
  - `0000`: Load (`001`)  
  - `0001`: Store (`010`)  
  - `0010`: Add (`011`)  
  - `0011`: Subtract (`100`)  
  - Default: `000` (No Operation)  
- The signals are updated **synchronously** with the clock signal, and the unit resets to `000` on **reset**.  
- This design uses a **case statement** for opcode decoding, making it easily expandable for more instructions.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day40
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_control_logic control_logic.v control_logic_tb.v
   vvp tb_control_logic
   ```  

3. **View Waveforms**  
   Open the generated `control_logic.vcd` file in GTKWave:  
   ```bash
   gtkwave control_logic.vcd
   ```  

---

## 💡 Key Learnings  

- **Opcode Decoding:** Learned how to **decode opcodes** to generate control signals.  
- **Case Statements in Verilog:** Effectively used **case statements** for flexible and scalable control logic.  
- **Synchronous Design:** Gained insights into designing **synchronous digital circuits** using clock edges.  

---

## 🔗 Resources  

- [Control Unit Basics](https://en.wikipedia.org/wiki/Control_unit)  
- [Verilog Case Statements](https://www.chipverify.com/verilog/verilog-case-statements)  

---

## 🤝 Feedback  

I'd love to hear your thoughts on this Control Logic implementation! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊   
