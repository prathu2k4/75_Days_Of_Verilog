# 🖥️ Day 48: 4-bit CPU in Verilog  

Welcome to Day 48 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-bit CPU** in Verilog. This basic CPU performs arithmetic and logic operations using an **Accumulator-based architecture**, making it a fundamental building block for simple processors.  

---  

## ✨ Project Overview  

The **4-bit CPU** supports:  
- **Accumulator Register (`acc`)** for storing computation results.  
- **Basic ALU Operations:**  
  - **ADD** (`0001`): Adds operand to accumulator.  
  - **SUB** (`0010`): Subtracts operand from accumulator.  
  - **AND** (`0011`): Bitwise AND with accumulator.  
  - **OR** (`0100`): Bitwise OR with accumulator.  
- **8-bit Instructions:** Consist of a **4-bit opcode** and a **4-bit operand**.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: System clock  
  - `reset`: Resets the accumulator  
  - `instruction`: 8-bit instruction (4-bit opcode + 4-bit operand)  
- **Output:**  
  - `acc`: 4-bit accumulator register  

---  

## ⚙️ How It Works  

- **Instruction Decoding:** The first 4 bits (`instruction[7:4]`) represent the **opcode**, while the last 4 bits (`instruction[3:0]`) represent the **operand**.  
- **Operation Execution:** The CPU performs the required operation based on the opcode.  

```verilog
case (opcode)
    4'b0001: acc <= acc + operand; // ADD
    4'b0010: acc <= acc - operand; // SUB
    4'b0011: acc <= acc & operand; // AND
    4'b0100: acc <= acc | operand; // OR
    default: acc <= acc;
endcase
```  

This simple CPU **mimics the execution flow of real processors**, handling arithmetic and logic operations efficiently.  

---  

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day48
   ```  

2. **Compile and Simulate**  
   ```bash
   iverilog -o tb_cpu_4bit cpu_4bit.v cpu_4bit_tb.v
   vvp tb_cpu_4bit
   ```  

3. **View Waveforms**  
   ```bash
   gtkwave cpu_4bit.vcd
   ```  

---  

## 💡 Key Learnings  

- **Basic CPU Design:** Implemented a **4-bit ALU and instruction processing** in Verilog.  
- **Instruction Execution:** Learned how to **decode and execute instructions** using a simple control mechanism.  
- **Accumulator-Based Architecture:** Understood how **register-based computation** works in CPUs.  

---  

## 🔗 Resources  

- [Understanding CPU Architecture](https://www.tutorialspoint.com/computer_logical_organization/computer_architecture.htm)  
- [Simple ALU Design in Verilog](https://www.chipverify.com/verilog/verilog-alu-design)  

---  

## 🤝 Feedback  

I’d love to hear your thoughts on this **4-bit CPU design**! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
