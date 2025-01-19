# 🛠️ Day 9: 4-Bit Parity Generator in Verilog  

Welcome to Day 9 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4-Bit Parity Generator**, a combinational circuit that calculates even and odd parity bits for a 4-bit input.  

---

## ✨ Project Overview  

The **Parity Generator** is used in digital systems to detect single-bit errors during data transmission. It generates:  
- **Even Parity**: The total number of 1's (including the parity bit) is even.  
- **Odd Parity**: The total number of 1's (including the parity bit) is odd.  

### **Inputs and Outputs**  
- **Inputs**:  
  - `data[3:0]`: 4-bit binary data input.  
- **Outputs**:  
  - `even_parity`: Even parity bit (1 if the total 1's are odd in `data`, 0 otherwise).  
  - `odd_parity`: Odd parity bit (1 if the total 1's are even in `data`, 0 otherwise).  

---

## ⚙️ How It Works  

### **Parity Calculation Logic**  

1. **Even Parity**:  
   - Calculated by XORing all bits of the input data:  
     ```verilog
     assign even_parity = data[0] ^ data[1] ^ data[2] ^ data[3];
     ```
   - Ensures the total number of 1's (including the parity bit) is even.

2. **Odd Parity**:  
   - Simply the inverse of the even parity bit:  
     ```verilog
     assign odd_parity = ~even_parity;
     ```  
   - Ensures the total number of 1's (including the parity bit) is odd.

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day09
   ```

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o parity_generator_tb parity_generator.v testbench.v
   vvp parity_generator_tb
   ```

3. **View Waveforms**  
   Open the generated `parity_generator.vcd` file in GTKWave:  
   ```bash
   gtkwave parity_generator.vcd
   ```

---

## 💡 Key Learnings  

- **Parity Logic**: Learned to calculate even and odd parity bits using XOR gates in Verilog.  
- **Efficiency**: Optimized the design with minimal logic for parity computation.  
- **Simulation**: Validated the design by testing all possible 4-bit input values.  

---

## 🔗 Resources  

- [Parity Bit Basics](https://en.wikipedia.org/wiki/Parity_bit)    

---

## 🤝 Feedback  

Have suggestions or want to collaborate? Feel free to reach out on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs). 😊  
