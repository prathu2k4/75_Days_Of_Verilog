# 🛠️ Day 27: Serial to Parallel Converter in Verilog  

Welcome to **Day 27** of my **75 Days of Verilog Coding Challenge**! 🚀  

Today, I implemented a **Serial to Parallel Converter** in Verilog. This circuit is widely used in **data communication systems**, where serial data needs to be converted into parallel format for further processing.  

---  

## ✨ Project Overview  

A **Serial to Parallel Converter** takes a serial input stream (one bit at a time) and converts it into an **8-bit parallel output**. This is useful in applications like **UART communication, SPI interface, and shift registers**.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `serial_in`: The serial data input  
  - `clk`: Clock signal  
  - `reset`: Resets the parallel output to `00000000`  
- **Output:**  
  - `parallel_out`: 8-bit parallel data output  

---  

## ⚙️ How It Works  

- On every **positive clock edge**, the serial input bit is shifted into the parallel register.  
- The **old bits shift left**, making space for the new incoming bit at the **least significant position**.  
- When `reset` is high, the parallel output is cleared to `00000000`.  

This behavior is implemented using an **always block** triggered by the positive edge of the clock and reset signal.  

---  

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day27
   ```  

2. **Compile and Simulate**  
   ```bash
   iverilog -o tb_serial_to_parallel serial_to_parallel.v serial_to_parallel_tb.v
   vvp tb_serial_to_parallel
   ```  

3. **View Waveforms**  
   ```bash
   gtkwave serial_to_parallel.vcd
   ```  

---  

## 💡 Key Learnings  

- **Serial-to-parallel data conversion:** Understanding how **bitwise shifting** can help in serial-to-parallel communication.  
- **Clock-based sequential logic:** Deepened my knowledge of **register-based design** in Verilog.  
- **Waveform Analysis:** Observed how the register updates as serial data is received over multiple clock cycles.  

---  

## 🔗 Resources  

- [Shift Registers and Serial-to-Parallel Conversion](https://en.wikipedia.org/wiki/Shift_register)  
- [Verilog Sequential Logic](https://www.chipverify.com/verilog/verilog-sequential-circuits)  

---  

## 🤝 Feedback  

Would love to hear your thoughts on this implementation! Feel free to connect with me on **[LinkedIn](https://www.linkedin.com/in/pratham-jainvs)** and share any feedback or suggestions. 😊  
