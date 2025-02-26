# 🛠️ Day 39: ALU (Arithmetic Logic Unit) in Verilog

Welcome to Day 39 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented an **Arithmetic Logic Unit (ALU)** in Verilog. An ALU is a fundamental component in processors, performing arithmetic and logical operations.  

---

## ✨ Project Overview  

The **4-bit ALU** is capable of performing the following operations based on a 2-bit select input:  
- **Addition**  
- **Subtraction**  
- **Bitwise AND**  
- **Bitwise OR**  

### **Inputs and Outputs**  
- **Inputs:**  
  - `a`: 4-bit operand A  
  - `b`: 4-bit operand B  
  - `sel`: 2-bit select input to choose the operation  
- **Output:**  
  - `result`: 4-bit result of the selected operation  

---

## ⚙️ How It Works  

- The ALU uses a **case statement** to perform operations based on the value of `sel`:  
  - `00`: **Addition** (`result = a + b`)  
  - `01`: **Subtraction** (`result = a - b`)  
  - `10`: **Bitwise AND** (`result = a & b`)  
  - `11`: **Bitwise OR** (`result = a | b`)  
- If `sel` is an invalid value, the output is set to `0000`.  
- This implementation demonstrates the use of **arithmetic and logical operations** in Verilog.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day39
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_alu alu.v alu_tb.v
   vvp tb_alu
   ```  

3. **View Waveforms**  
   Open the generated `alu.vcd` file in GTKWave:  
   ```bash
   gtkwave alu.vcd
   ```  

---

## 💡 Key Learnings  

- **ALU Design:** Gained insights into designing a basic ALU using Verilog.  
- **Case Statement Usage:** Used the `case` statement to select operations.  
- **Bitwise Operations:** Practiced implementing **bitwise AND** and **bitwise OR**.  

---

## 🔗 Resources  

- [Arithmetic Logic Unit (ALU)](https://en.wikipedia.org/wiki/Arithmetic_logic_unit)  
- [Verilog Case Statement](https://www.chipverify.com/verilog/verilog-case-statement)  

---

## 🤝 Feedback  

I'd love to hear your thoughts on this ALU implementation! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  