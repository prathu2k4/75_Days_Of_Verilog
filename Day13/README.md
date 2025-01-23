# 🛠️ Day 13: Palindrome Detector

Welcome to Day 13 of my **75 Days of Verilog Coding Challenge**! 🎉

Today, I designed a **Palindrome Detector** that checks if a 4-bit input is a palindrome. A palindrome is a sequence that reads the same backward as forward, such as `1001` or `1111`.

---

## ✨ Project Overview

The **Palindrome Detector** compares the bits of a 4-bit input data and outputs a signal (`is_palindrome`) that indicates whether the input is a palindrome or not.

### **Inputs and Outputs**
- **Inputs**:
  - `data`: A 4-bit input.
- **Outputs**:
  - `is_palindrome`: A signal that is `1` if the input data is a palindrome, and `0` otherwise.

---

## ⚙️ How It Works

### **Palindrome Detection Logic**
- The first bit (`data[3]`) is compared with the last bit (`data[0]`).
- The second bit (`data[2]`) is compared with the third bit (`data[1]`).
- If both pairs match, the input is considered a palindrome, and `is_palindrome` is set to `1`.

---

## 🛠️ Simulation Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day13
   ```

2. **Compile and Simulate**
   Run the following commands:
   ```bash
   iverilog -o tb_palindrome_detector palindrome_detector.v palindrome_detector_tb.v
   vvp tb_palindrome_detector
   ```

3. **View Waveforms**
   Open the generated `palindrome_detector.vcd` file in GTKWave:
   ```bash
   gtkwave palindrome_detector.vcd
   ```

---

## 💡 Key Learnings

- **Bitwise Comparison**: Learned how to perform bitwise comparison using Verilog.
- **Palindrome Logic**: Implemented a simple and effective way to check if a 4-bit input is a palindrome.
- **Testbench Development**: Ensured design functionality with comprehensive testing across all possible input combinations.

---

## 🔗 Resources

- [Binary Numbers and Palindromes](https://en.wikipedia.org/wiki/Palindrome)

---

## 🤝 Feedback

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊
