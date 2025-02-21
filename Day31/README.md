# 🛠️ Day 31: Overlapping Sequence Detector in Verilog  

Welcome to Day 31 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented an **Overlapping Sequence Detector** in Verilog. This type of sequence detector is commonly used in **digital communication, pattern matching, and protocol validation**.  

---

## ✨ Project Overview  

The **Overlapping Sequence Detector** identifies a specific bit pattern (`101`) in a serial data stream, even if the pattern overlaps with the next occurrence. It is implemented using a **Finite State Machine (FSM)**.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal to initialize the detector  
  - `in`: Serial input bit  
- **Outputs:**  
  - `out`: High (`1`) when the sequence `101` is detected  

---

## ⚙️ How It Works  

- The detector transitions through **four states (`S0, S1, S2, S3`)** to track incoming bits.  
- If the **"101" pattern** is detected, the `out` signal is asserted (`1`).  
- Overlapping sequences are **recognized continuously**, meaning if the last `1` of `101` is also the first `1` of the next `101`, detection remains seamless.  
- The FSM transitions are as follows:  
  ```
  S0 (Initial) → S1 (1 detected) → S2 (10 detected) → S3 (101 detected) → S1 (if 1 continues, allowing overlap)
  ```

This FSM ensures **robust pattern recognition** in serial bit streams.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day31
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_sequence_detector overlaping_sequence_detector.v overlaping_sequence_detector_tb.v
   vvp tb_sequence_detector
   ```  

3. **View Waveforms**  
   Open the generated `sequence_detector.vcd` file in GTKWave:  
   ```bash
   gtkwave sequence_detector.vcd
   ```  

---

## 💡 Key Learnings  

- **Understanding FSM-Based Sequence Detection:** Explored how FSMs help track patterns in sequential logic.  
- **Handling Overlapping Sequences:** Learned how **state retention** enables continuous pattern detection.  
- **Efficient State Machine Design:** Improved understanding of **state transitions** and digital design optimization.  

---

## 🔗 Resources  

- [Finite State Machine (FSM) in Digital Design](https://www.circuitstoday.com/finite-state-machine)  
- [Verilog Sequential Logic Basics](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  
