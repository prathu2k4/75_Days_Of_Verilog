# 🛠️ Day 30: Sequence Detector (FSM-Based) in Verilog  

Welcome to Day 30 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Finite State Machine (FSM)-based Sequence Detector** in Verilog. This circuit detects the **"101"** sequence in a serial bitstream and is widely used in **pattern recognition, communication protocols, and digital filtering**.  

---

## ✨ Project Overview  

The **Sequence Detector** continuously monitors a serial bitstream and **sets a flag when the pattern "101" is detected**. It uses a **Moore state machine** to track incoming bits and determine when the desired sequence appears.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal  
  - `in`: Serial input bitstream  
- **Output:**  
  - `detected`: High (`1`) when the sequence "101" is detected  

---

## ⚙️ How It Works  

- The **FSM transitions through four states**, checking for "101" in the bitstream.  
- When the sequence is detected, `detected` is set to **high (`1`)** for one clock cycle.  
- The FSM resets when `reset` is asserted.  

The state transitions are as follows:  

| **Current State** | **Input (`in`) = 0** | **Input (`in`) = 1** |
|------------------|------------------|------------------|
| `S0` (Start)    | `S0`             | `S1`             |
| `S1` (Got '1')  | `S2`             | `S1`             |
| `S2` (Got '10') | `S0`             | `S3` (Detect)    |
| `S3` (Got '101') | `S2`             | `S1`             |

This FSM **accurately detects non-overlapping "101" patterns** in the input stream.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day30
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_sequence_detector sequence_detector.v sequence_detector_tb.v
   vvp tb_sequence_detector
   ```  

3. **View Waveforms**  
   Open the generated `sequence_detector.vcd` file in GTKWave:  
   ```bash
   gtkwave sequence_detector.vcd
   ```  

---

## 💡 Key Learnings  

- **Finite State Machines (FSMs):** Explored **Moore-based FSM** design for pattern detection.  
- **State Transitions & Sequential Logic:** Understood **state encoding and transitions** for detecting input sequences.  
- **Clock-Driven Detection:** Strengthened my skills in **edge-triggered event detection** and Verilog testbench creation.  

---

## 🔗 Resources  

- [FSM in Verilog](https://www.chipverify.com/verilog/verilog-finite-state-machine)  
- [Sequence Detection](https://en.wikipedia.org/wiki/Finite-state_machine)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
