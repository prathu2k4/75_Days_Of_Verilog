# 🛠️ Day 38: UART Receiver in Verilog  

Welcome to Day 38 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **UART Receiver** in Verilog, an essential component for **serial communication**. UART (Universal Asynchronous Receiver/Transmitter) is commonly used in embedded systems for reliable data exchange.  

---

## ✨ Project Overview  

The **UART Receiver** module is designed to receive serial data, deserialize it, and output it as an 8-bit parallel data word. It follows the **standard UART frame format**: Start Bit → Data Bits → Stop Bit.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset signal  
  - `rx`: Serial data input  
- **Outputs:**  
  - `data`: 8-bit parallel data output  

---

## ⚙️ How It Works  

- The receiver **detects the start bit (low state)** to initiate data reception.  
- It **samples each incoming bit** at regular intervals synchronized with the clock.  
- The **bits are shifted** into a shift register to form the 8-bit data word.  
- On detecting the **stop bit**, the data is considered valid and made available at the output.  
- If the **reset** signal is high, the receiver is reinitialized.  

This design ensures reliable **asynchronous communication** between devices.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day38
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_uart_rx uart_rx.v uart_rx_tb.v
   vvp tb_uart_rx
   ```  

3. **View Waveforms**  
   Open the generated `uart_rx.vcd` file in GTKWave:  
   ```bash
   gtkwave uart_rx.vcd
   ```  

---

## 💡 Key Learnings  

- **UART Protocol:** Gained a deeper understanding of how UART communication works, including **start and stop bit detection**.  
- **Shift Register Logic:** Implemented a **shift register** to deserialize incoming bits into parallel data.  
- **Asynchronous Data Reception:** Enhanced skills in managing asynchronous communication using Verilog.  

---

## 🔗 Resources  

- [UART Communication](https://en.wikipedia.org/wiki/Universal_asynchronous_receiver-transmitter)  
- [Verilog Sequential Circuits](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---

## 🤝 Feedback  

Let me know your thoughts or suggestions for improving the design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  