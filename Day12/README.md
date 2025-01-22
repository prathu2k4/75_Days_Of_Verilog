# 🛠️ Day 12: Gray Code to Binary Converter  

Welcome to Day 12 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-bit Gray Code to Binary Code Converter**, a crucial design used in digital systems to decode Gray code values into their equivalent binary representations.  

---

## ✨ Project Overview  

The Gray-to-Binary Converter takes a 4-bit Gray code input and outputs its equivalent 4-bit binary code by using the relationship between consecutive Gray and Binary bits.  

### **Inputs and Outputs**  
- **Inputs**:  
  - `gray`: 4-bit Gray code input  
- **Outputs**:  
  - `binary`: 4-bit binary code output  

---

## ⚙️ How It Works  

### **Conversion Logic**  
1. The **most significant bit (MSB)** of the binary code is the same as the MSB of the Gray code.  
2. Each subsequent binary bit is derived by XORing the previous binary bit with the corresponding Gray code bit:  
   - `binary[i] = binary[i+1] ^ gray[i]`  

This design ensures an efficient and accurate conversion process.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day12
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o gray_to_binary_tb gray_to_binary.v gray_to_binary_tb.v
   vvp gray_to_binary_tb
   ```  

3. **View Waveforms**  
   Open the generated `gray_to_binary.vcd` file in GTKWave:  
   ```bash
   gtkwave gray_to_binary.vcd
   ```  

---

## 💡 Key Learnings  

- **Gray Code Properties**: Gained insights into how consecutive Gray code bits differ by only one bit, reducing errors in digital communication.  
- **Efficient Conversion**: Leveraged XOR operations for a simple and clean implementation of the conversion logic.  
- **Simulation Validation**: Tested the design with all 16 possible 4-bit Gray code values.  

---

## 🔗 Resources  

- [Gray Code Basics](https://en.wikipedia.org/wiki/Gray_code)  
- [XOR Gate Applications](https://en.wikipedia.org/wiki/XOR_gate)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
