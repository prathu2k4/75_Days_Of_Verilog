# 🛠️ Day 49: 8-bit ALU in Verilog  

Welcome to Day 49 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented an **8-bit Arithmetic Logic Unit (ALU)** in Verilog. The ALU is a fundamental component in processors, performing arithmetic and logic operations.  

---

## ✨ Project Overview  

The **8-bit ALU** module supports:  
- **Arithmetic Operations:** Addition and Subtraction.  
- **Logical Operations:** AND, OR, XOR, and NOT.  
- **Bitwise Shifts:** Left and Right Shift operations.  
- **Carry Flag:** Handles overflow in arithmetic operations.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `A, B`: 8-bit input operands.  
  - `opcode`: 3-bit control signal to select operation.  
- **Outputs:**  
  - `result`: 8-bit output result of the operation.  
  - `carry`: Carry-out flag for arithmetic operations.  

---

## ⚙️ How It Works  

The ALU executes operations based on the **opcode** value:  

- **Addition (000)**: `result = A + B`, with carry-out.  
- **Subtraction (001)**: `result = A - B`, with carry-out.  
- **AND (010)**: `result = A & B`.  
- **OR (011)**: `result = A | B`.  
- **XOR (100)**: `result = A ^ B`.  
- **NOT (101)**: `result = ~A` (ignores `B`).  
- **Left Shift (110)**: `result = A << 1`.  
- **Right Shift (111)**: `result = A >> 1`.  

```verilog
case (opcode)
    3'b000: {carry, result} = A + B;  // Addition
    3'b001: {carry, result} = A - B;  // Subtraction
    3'b010: result = A & B;           // AND
    3'b011: result = A | B;           // OR
    3'b100: result = A ^ B;           // XOR
    3'b101: result = ~A;              // NOT
    3'b110: result = A << 1;          // Left Shift
    3'b111: result = A >> 1;          // Right Shift
endcase
```

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day49
   ```  

2. **Compile and Simulate**  
   ```bash
   iverilog -o tb_alu_8bit alu_8bit.v alu_8bit_tb.v
   vvp tb_alu_8bit
   ```  

3. **View Waveforms**  
   ```bash
   gtkwave alu_8bit.vcd
   ```  

---

## 💡 Key Learnings  

- **ALU Design:** Implemented arithmetic and logic operations in Verilog.  
- **Carry Handling:** Used Verilog's `{carry, result}` notation to handle carry bits.  
- **Bitwise Operations:** Explored shifting and logical operations in digital circuits.  

---

## 🔗 Resources  

- [Understanding ALUs](https://www.chipverify.com/verilog/verilog-alu-design)  
- [Bitwise Operations in Verilog](https://www.chipverify.com/verilog/verilog-bitwise-operations)  

---

## 🤝 Feedback  

I'd love to hear your thoughts on this ALU design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
