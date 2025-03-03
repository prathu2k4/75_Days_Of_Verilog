# 🛠️ Day 42: Calculator in Verilog  

Welcome to Day 42 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-bit Calculator** in Verilog that performs basic arithmetic and logical operations. Calculators are essential in **digital circuits and processors** for performing computations.  

---  

## ✨ Project Overview  

The **Calculator** supports the following operations:  
- **Addition** (`00`)  
- **Subtraction** (`01`)  
- **Bitwise AND** (`10`)  
- **Bitwise OR** (`11`)  

It is designed using a **case statement** to select the operation based on a 2-bit control signal.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `a`: 4-bit input operand  
  - `b`: 4-bit input operand  
  - `op`: 2-bit operation selector  
- **Output:**  
  - `result`: 4-bit result of the selected operation  

---  

## ⚙️ How It Works  

- The operation is chosen using the 2-bit `op` input:  
  - `00`: Addition (`a + b`)  
  - `01`: Subtraction (`a - b`)  
  - `10`: Bitwise AND (`a & b`)  
  - `11`: Bitwise OR (`a | b`)  
- The **always block** evaluates the operation whenever inputs change.  
- A **case statement** is used for selecting the required operation.  

This design is **simple yet powerful**, demonstrating the use of **arithmetic and logical operations** in Verilog.  

---  

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day42
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o calculator_tb calculator.v calculator_tb.v
   vvp calculator_tb
   ```  

3. **View Waveforms**  
   Open the generated `calculator.vcd` file in GTKWave:  
   ```bash
   gtkwave calculator.vcd
   ```  

---  

## 💡 Key Learnings  

- **ALU Operations:** Learned about basic arithmetic and logical operations.  
- **Case Statement:** Utilized **case statements** for operation selection.  
- **Modular Design:** Gained insights into designing **modular and reusable components**.  

---  

## 🔗 Resources  

- [Verilog Operators](https://www.chipverify.com/verilog/verilog-operators)  
- [Digital Logic Design](https://en.wikipedia.org/wiki/Digital_logic)  

---  

## 🤝 Feedback  

I'd love to hear your thoughts on this Calculator design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  