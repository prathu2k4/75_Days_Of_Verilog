# 🛠️ Day 14: 2's Complement  

Welcome to Day 14 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **2's complement** module, which is a widely used method in digital systems for representing negative numbers in binary. This module takes a 4-bit binary input and outputs its 2's complement, effectively flipping the bits and adding `1` to the least significant bit.  

---

## ✨ Project Overview  

The 2's complement of a binary number is used in arithmetic operations like subtraction. It allows for easier representation of both positive and negative integers. This module performs the conversion by first inverting the bits and then adding `1` to the result.  

### **Inputs and Outputs**  
- **Inputs**:  
  - `in`: 4-bit binary number to be converted to 2's complement.  
- **Outputs**:  
  - `out`: 4-bit 2's complement of the input.  

---

## ⚙️ How It Works  

1. **Inversion**: The module inverts all the bits of the input number.  
2. **Addition of 1**: It adds `1` to the inverted bits to complete the 2's complement operation.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day14
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_twos_complement twos_complement.v twos_complement_tb.v
   vvp tb_twos_complement
   ```  

3. **View Waveforms**  
   Open the generated `twos_complement.vcd` file in GTKWave:  
   ```bash
   gtkwave twos_complement.vcd
   ```  

---

## 💡 Key Learnings  

- **2's Complement Calculation**: Learned how to compute the 2's complement by first inverting the bits and adding `1`.  
- **Binary Arithmetic**: Gained hands-on experience with binary arithmetic in Verilog.  
- **Testbench Design**: Tested the module across a range of input values, ensuring correct operation for various cases.  

---

## 🔗 Resources  

- [2's Complement Explained](https://en.wikipedia.org/wiki/Two%27s_complement)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
