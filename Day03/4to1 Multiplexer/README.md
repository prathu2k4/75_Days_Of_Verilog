# 🛠️ Day 3: 4:1 Multiplexer in Verilog  

Welcome to Day 3 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **4:1 Multiplexer**, a fundamental combinational circuit widely used in digital design for data selection.  

---

## ✨ Project Overview  

The **4:1 Multiplexer (MUX)** selects one of four input data lines (`d[3:0]`) based on a 2-bit select line (`sel`) and routes the selected input to the output (`y`).  

### **Inputs and Outputs**  
- **Inputs**:  
  - `d[3:0]`: Four data inputs  
  - `sel[1:0]`: 2-bit select line  
- **Output**:  
  - `y`: Selected data output  

---

## ⚙️ How It Works  

## 🔄 Data Selection Logic

| **Select Line (`sel`)** | **Output (`y`)** | **Data Input Selected (`d`)** |
|--------------------------|------------------|--------------------------------|
| `2'b00`                 | `d[0]`          | First data input              |
| `2'b01`                 | `d[1]`          | Second data input             |
| `2'b10`                 | `d[2]`          | Third data input              |
| `2'b11`                 | `d[3]`          | Fourth data input             |

2. **Example Operation**:  
   For `d = 4'b1010`:  
   - `sel = 2'b00` → `y = d[0] = 0`  
   - `sel = 2'b01` → `y = d[1] = 1`  
   - `sel = 2'b10` → `y = d[2] = 0`  
   - `sel = 2'b11` → `y = d[3] = 1`  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day03/4to1 Multiplexer
   ```

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o mux4to1_tb mux.v testbench.v
   vvp mux4to1_tb
   ```

3. **View Waveforms**  
   Open the generated `mux4to1.vcd` file in GTKWave:  
   ```bash
   gtkwave mux4to1.vcd
   ```

---

## 💡 Key Learnings  

- **Conditional Operators**: Used the conditional (`? :`) operator in Verilog for efficient MUX design.  
- **Testbench Design**: Created a testbench to test various select line combinations and input values.  
- **Waveform Analysis**: Validated the design and debugged issues using GTKWave.  

---

## 🔗 Resources  

- [Multiplexer Basics](https://en.wikipedia.org/wiki/Multiplexer)  
- [Verilog Conditional Operators](https://verilogguide.readthedocs.io/en/latest/operators.html)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
  
