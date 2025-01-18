# 🛠️ Day 8: 7-Segment Display Decoder in Verilog  

Welcome to Day 8 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **7-Segment Display Decoder**, a combinational circuit that converts 4-bit binary-coded decimal (BCD) inputs into corresponding 7-segment display outputs.  

---

## ✨ Project Overview  

The **7-Segment Display Decoder** takes a 4-bit BCD input (`bcd`) and generates a 7-bit output (`seg`) to drive a seven-segment display. Each bit of `seg` corresponds to a segment of the display (`a` to `g`).  

### **Inputs and Outputs**  
- **Inputs**:  
  - `bcd[3:0]`: 4-bit Binary-Coded Decimal (BCD) input  
- **Outputs**:  
  - `seg[6:0]`: 7-bit output to control the segments of the display (`a` to `g`)  

### **Segment Mapping**  

| BCD Input (`bcd`) | Displayed Digit | `seg` Output (`abcdefg`) |
|--------------------|-----------------|--------------------------|
| `4'b0000`         | `0`             | `1111110`               |
| `4'b0001`         | `1`             | `0110000`               |
| `4'b0010`         | `2`             | `1101101`               |
| `4'b0011`         | `3`             | `1111001`               |
| `4'b0100`         | `4`             | `0110011`               |
| `4'b0101`         | `5`             | `1011011`               |
| `4'b0110`         | `6`             | `1011111`               |
| `4'b0111`         | `7`             | `1110000`               |
| `4'b1000`         | `8`             | `1111111`               |
| `4'b1001`         | `9`             | `1111011`               |
| Other             | Blank           | `0000000`               |

---

## ⚙️ How It Works  

The decoder uses a `case` statement to map each valid 4-bit BCD input to a specific 7-bit pattern for the corresponding digit. Invalid inputs result in all segments being turned off (blank display).  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day08
   ```

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o decoder_tb seven_segment_decoder.v testbench.v
   vvp decoder_tb
   ```

3. **View Waveforms**  
   Open the generated `seven_segment_decoder.vcd` file in GTKWave:  
   ```bash
   gtkwave seven_segment_decoder.vcd
   ```

---

## 💡 Key Learnings  

- **Case Statement**: Used `case` statements in Verilog to efficiently map inputs to outputs.  
- **Combinational Logic Design**: Designed a circuit that directly controls a 7-segment display.  
- **Simulation and Testing**: Validated the design by applying all possible BCD inputs using a testbench.  

---

## 🔗 Resources  

- [7-Segment Display Basics](https://en.wikipedia.org/wiki/Seven-segment_display)  
- [Verilog Case Statements](https://verilogguide.readthedocs.io/en/latest/casestatement.html)  

---

## 🤝 Feedback  

I’d love to hear your thoughts, suggestions, or insights on this project! Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) or drop me a message to discuss or collaborate on Verilog-based designs. 😊
