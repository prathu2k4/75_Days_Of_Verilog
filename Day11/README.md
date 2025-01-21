# 🛠️ Day 11: Binary-to-Gray Code Converter  

Welcome to Day 11 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I designed a **4-Bit Binary-to-Gray Code Converter**, an essential component for reducing bit errors in digital communication and signal processing.  

---

## ✨ Project Overview  

The Binary-to-Gray Code Converter transforms a 4-bit binary number into its corresponding Gray code representation using XOR logic. Gray codes are widely used in digital systems to ensure that only one bit changes between successive values, minimizing errors in transitions.  

### **Inputs and Outputs**  
- **Inputs**:  
  - `binary`: 4-bit binary input  
- **Outputs**:  
  - `gray`: 4-bit Gray code output  

---

## ⚙️ How It Works  

### **Conversion Logic**  
1. **MSB remains unchanged**: The most significant bit of the Gray code (`gray[3]`) is the same as the most significant bit of the binary input (`binary[3]`).  
2. **Bitwise XOR**: Each subsequent Gray code bit is computed by XORing the corresponding binary bit with the next higher-order binary bit:  
   - `gray[2] = binary[3] XOR binary[2]`  
   - `gray[1] = binary[2] XOR binary[1]`  
   - `gray[0] = binary[1] XOR binary[0]`  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day11
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_binary_to_gray binary_to_gray.v binary_to_gray_tb.v
   vvp tb_binary_to_gray
   ```  

3. **View Waveforms**  
   Open the generated `binary_to_gray.vcd` file in GTKWave:  
   ```bash
   gtkwave binary_to_gray.vcd
   ```  

---

## 💡 Key Learnings  

- **Gray Code Fundamentals**: Gray codes are an efficient way to minimize bit errors during binary transitions.  
- **XOR Logic**: Utilized simple XOR gates for each bit conversion, ensuring a compact design.  
- **Comprehensive Testing**: Simulated all 16 possible 4-bit binary values to validate correctness.  

---

## 🔗 Resources  

- [Gray Code Basics](https://en.wikipedia.org/wiki/Gray_code)  
- [Digital Design Principles](https://www.tutorialspoint.com/digital_circuits/digital_circuits_gray_code.htm)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving this design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
