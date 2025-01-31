# 🛠️ Day 20: D Flip-Flop in Verilog  

Welcome to Day 20 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **D Flip-Flop** in Verilog. This fundamental sequential circuit is a building block for registers, counters, and memory elements in digital systems.  

---

## ✨ Project Overview  

The **D Flip-Flop** is a basic sequential logic circuit that stores a single bit of data. On every positive clock edge, it captures the value of the `d` input and stores it in the `q` output.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `d`: Data input  
  - `clk`: Clock signal  
- **Outputs:**  
  - `q`: Output that stores the value of `d` on the rising edge of `clk`  

---

## ⚙️ How It Works  

- **Operation:**  
  - On every positive edge of the clock (`clk`), the value of the `d` input is latched to the `q` output.  
  - The `q` output retains its value until the next positive clock edge.  

- **Behavioral Modeling:**  
  - The flip-flop behavior is modeled using an `always` block that is sensitive to the positive edge of the clock.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day20
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_d_flip_flop d_flip_flop.v d_flip_flop_tb.v
   vvp tb_d_flip_flop
   ```  

3. **View Waveforms**  
   Open the generated `d_flip_flop.vcd` file in GTKWave:  
   ```bash
   gtkwave d_flip_flop.vcd
   ```  

---

## 💡 Key Learnings  

- **Sequential Logic Basics:** Gained a deeper understanding of how a D Flip-Flop operates.  
- **Clock Signal Handling:** Learned to simulate clock signals and their effect on sequential circuits.  
- **Testbench Development:** Validated the flip-flop design with various `d` inputs and observed the changes in the `q` output.  

---

## 🔗 Resources  

- [Flip-Flop Basics](https://en.wikipedia.org/wiki/Flip-flop_(electronics))  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
