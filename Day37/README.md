# 🛠️ Day 37: UART Transmitter in Verilog  

Welcome to Day 37 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **UART Transmitter** in Verilog. UART (Universal Asynchronous Receiver/Transmitter) is widely used for **serial communication** in embedded systems, allowing data transmission between devices over a single wire.  

---

## ✨ Project Overview  

The **UART Transmitter** converts parallel data into a serial stream of bits, suitable for communication over serial ports. It follows the standard UART frame format with **start bit, data bits, and stop bit**.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `reset`: Active-high reset to initialize the transmitter  
  - `start`: Trigger to start transmission  
  - `data`: 8-bit parallel data to be transmitted  
- **Output:**  
  - `tx`: Serial data output  

---

## ⚙️ How It Works  

- When **start** is triggered, the data is **loaded into a shift register** with a start bit (`0`) prepended and a stop bit (`1`) appended.  
- The **shift register** serializes the data by shifting one bit at a time to the `tx` output.  
- Transmission order:  
  ```
  Start Bit → Data Bits (LSB to MSB) → Stop Bit
  ```
- The transmitter remains **idle** (`tx = 1`) when not transmitting.  

This implementation follows the **standard UART protocol**, ensuring compatibility with common serial communication interfaces.  

---

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day37
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_uart_tx uart_tx.v uart_tx_tb.v
   vvp tb_uart_tx
   ```  

3. **View Waveforms**  
   Open the generated `uart_tx.vcd` file in GTKWave:  
   ```bash
   gtkwave uart_tx.vcd
   ```  

---

## 💡 Key Learnings  

- **UART Protocol Basics:** Gained a deeper understanding of UART frame structure and serial communication.  
- **Shift Register Logic:** Utilized shift registers for **serializing parallel data**.  
- **Asynchronous Communication:** Learned how to **synchronize data** using start and stop bits.  

---

## 🔗 Resources  

- [UART Communication](https://en.wikipedia.org/wiki/Universal_asynchronous_receiver-transmitter)  
- [Verilog Shift Registers](https://www.chipverify.com/verilog/verilog-shift-register)  

---

## 🤝 Feedback  

I'd love to hear your thoughts on this UART implementation! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  