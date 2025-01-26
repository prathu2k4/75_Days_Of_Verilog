# 🚀 75 Days of Verilog Coding Challenge  

Welcome to my **75 Days of Verilog** journey! 🎉 Over the next 75 days, I will implement various **Verilog designs**, ranging from **basic logic gates** to more **complex combinational and sequential circuits**, exploring the exciting world of **digital design** and **hardware description languages**.  

💻 Whether you're a student, hobbyist, or professional, feel free to follow along, give feedback, and join me on this learning adventure!  

---

## 🗓️ Progress Tracker  
Here’s how I’m documenting my daily progress:  

| Day | Project Name            | Description                          | Link                          |
|-----|-------------------------|--------------------------------------|-------------------------------|
|  1  | Basic Logic Gates       | AND, OR, NOT, XOR, XNOR, NOR         | [Day 1 - Basic Gates](./Day01)  |
|  2  | 4-Input AND, BCD Adder, Ripple Carry Adder | Implementation of a 4-input AND gate, BCD adder with correction logic, and a 4-bit ripple carry adder | [Day 2 - Adders and AND Gate](./Day02) |
|  3  | 4:1 Multiplexer, Carry Look-Ahead Adder | Designed a 4:1 MUX and started implemented a carry look-ahead adder | [Day 3 - MUX and Carry Look-Ahead Adder](./Day03) |
|  4  | Magnitude Comparator     | 2-bit Magnitude Comparator                     | [Day 4 - Comparator](./Day04)  |
|  5  | 3-to-8 Decoder          | Designed and implemented a 3-to-8 decoder with enable functionality | [Day 5 - Decoder](./Day05)    |
|  6  | 4-Bit Signed Comparator   | Signed comparator to determine GT, LT, or EQ between two signed 4-bit numbers | [Day 6 - Signed Comparator](./Day06) |
|  7  | 4-Bit Subtractor Using 2's Complement | Designed a 4-bit subtractor using 2's complement logic to handle subtraction and borrow | [Day 7 - Subtractor](./Day07) |
|  8  | 7-Segment Display Decoder  | Developed a BCD-to-7-segment display decoder for numeric visualization | [Day 8 - Seven Segment Decoder](./Day08)  |
|  9  | 4-Bit Parity Generator | Implemented an even/odd parity generator for 4-bit input data | [Day 9 - Parity Generator](./Day09) |
| 10  | 4-Input Priority Encoder          | Encodes the highest-priority active input into a 2-bit output with a valid signal | [Day 10 - Priority Encoder](./Day10) |
| 11  | Gray-to-Binary Converter         | Designed a module to convert Gray code to binary | [Day 11 - Gray to Binary](./Day11) |
| 12  | Binary-to-Gray Converter         | Designed a module to convert binary to Gray code | [Day 12 - Binary to Gray](./Day12) |
| 13  | Palindrome Detector             | Created a palindrome detector for 4-bit input | [Day 13 - Palindrome Detector](./Day13) |
| 14  | 2's Complement                   | Implemented a module to calculate the 2's complement of a 4-bit number | [Day 14 - 2's Complement](./Day14) |
| 15  | Barrel Shifter                   | Designed a barrel shifter for 4-bit data with different shift options | [Day 15 - Barrel Shifter](./Day15) |
| 16  | Majority Function               | Created a majority function for 3 input bits | [Day 16 - Majority Function](./Day16) |
| 17  | (Coming Soon)                     | 🚧 Work in Progress 🚧 |  |

Keep an eye on this tracker as I upload each day’s project. I’ll be expanding this list as I progress further! 🚀  

---

## 🛠️ Tools and Technology  
Here are the tools I’m using throughout this challenge:  

- **🔧 Icarus Verilog**: For compiling and simulating Verilog designs  
- **📊 GTKWave**: For visualizing waveforms and analyzing simulation results  
- **📁 GitHub**: To document and share all my projects with the community  

---

## 🎯 What’s the Goal?  
This challenge is about:  
1. Strengthening my **digital design skills** and understanding of **Verilog HDL**.  
2. Exploring and building **practical projects** (e.g., gates, arithmetic circuits, state machines, etc.).  
3. Learning how to debug, simulate, and visualize designs effectively.  
4. Contributing to the **open-source community** by sharing my work.  

---

## 🔗 How to Use  
1. **Clone the Repository**  
   To get started, clone this repository and navigate to the desired day's project folder:  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog
   ```

2. **Explore Projects**  
   Inside each day’s folder, you’ll find:  
   - A Verilog module (e.g., `basic_gates.v`)  
   - A testbench file (e.g., `testbench.v`)  
   - Instructions for simulation in the `README.md` file  

3. **Run Simulations**  
   Use **Icarus Verilog** to compile and simulate the designs:  
   ```bash
   iverilog -o output_file module.v testbench.v  
   vvp output_file  
   ```  

4. **Visualize Waveforms**  
   Open the `.vcd` file in **GTKWave** to analyze the simulation results.  

---

## 🤝 Let’s Collaborate!  
If you:  
- Have feedback, tips, or suggestions  
- Are working on a similar project  
- Want to learn digital design together  

Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs)! Let’s grow and learn as a community. 🌱  

---

## 🙌 Thank You!  
Thanks for visiting my repository! I hope this inspires you to dive into the world of **HDL and digital design**. 😊
