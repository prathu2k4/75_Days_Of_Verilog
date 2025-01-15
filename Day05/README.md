# 🛠️ Day 5: 3-to-8 Decoder in Verilog  

Welcome to Day 5 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **3-to-8 Decoder**, an essential combinational circuit used to decode binary inputs into one-hot encoded outputs.  

---

## ✨ Project Overview  

A **3-to-8 Decoder** takes a 3-bit input (`a[2:0]`) and an enable signal (`en`) and activates one of its 8 outputs (`y[7:0]`) based on the binary value of the input. When the enable signal is low, all outputs remain inactive (`0`).  

### **Inputs and Outputs**  

- **Inputs**:  
  - `a[2:0]`: 3-bit binary input  
  - `en`: Enable signal  
- **Outputs**:  
  - `y[7:0]`: One-hot encoded output  

---

## ⚙️ How It Works  

The decoder uses the enable signal (`en`) and input `a[2:0]` to determine the active output:  

1. When `en = 0`:  
   - All outputs (`y[7:0]`) are `0`, regardless of the input.  
   
2. When `en = 1`:  
   - One of the 8 outputs is set to `1`, based on the value of `a`.  

### **Truth Table**  

| `en` | `a[2:0]` | `Output`          |  
|------|----------|-------------------|  
| 0    | 000      | 0          |  
| 0    | 101      | 0          |  
| 1    | 000      | y[0]          |  
| 1    | 001      | y[1]          |  
| 1    | 010      | y[2]          |  
| 1    | 011      | y[3]          |  
| 1    | 100      | y[4]          |  
| 1    | 101      | y[5]          |  
| 1    | 110      | y[6]          |  
| 1    | 111      | y[7]          |  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day05
   ```  

2. **Compile and Simulate**  
   Run the following commands to simulate the decoder:  
   ```bash
   iverilog -o decoder_tb decoder3to8.v testbench.v
   vvp decoder_tb
   ```  

3. **View Waveforms**  
   Open the generated `decoder3to8.vcd` file in GTKWave:  
   ```bash
   gtkwave decoder3to8.vcd
   ```  

---

## 💡 Key Learnings  

- **Behavioral Modeling**: Used `always @(*)` block to implement the decoding logic.  
- **Enable Signal**: Incorporated an enable signal to control the outputs.  
- **Simulation Testing**: Verified functionality across all possible input combinations.  

---

## 🔗 Resources  

- [Decoder Basics](https://en.wikipedia.org/wiki/Decoder)  

---

## 🤝 Feedback  

I’d love to hear your thoughts, suggestions, or insights on this project! Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) or drop me a message to discuss or collaborate on Verilog-based designs. 😊
