# 🔗 Day 47: I2C Master in Verilog  

Welcome to Day 47 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented an **I2C Master module** in Verilog. The I2C (Inter-Integrated Circuit) protocol is widely used for **serial communication** between microcontrollers and peripherals such as sensors, memory devices, and displays.  

---  

## ✨ Project Overview  

The **I2C Master** module supports:  
- **Start and Stop Conditions:** Generates correct I2C start/stop sequences.  
- **Clock Signal (SCL) Control:** Manages the timing of data transmission.  
- **Bitwise Data Transfer:** Transmits data one bit at a time over the SDA line.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: System clock  
  - `start`: Initiates the data transfer  
  - `data_in`: 8-bit data to be transmitted  
- **Outputs:**  
  - `scl`: Serial clock output  
  - `sda`: Serial data output  

---  

## ⚙️ How It Works  

- **Start Condition:** The `sda` line is pulled low while `scl` is high, indicating the beginning of a transmission.  
- **Data Transmission:** The 8-bit data is shifted out bit by bit, synchronized with the clock pulses.  
- **Stop Condition:** The `sda` line is released high while `scl` is high, signaling the end of communication.  

```verilog
if (start) begin
    bit_count <= 0;
    shift_reg <= data_in;
    scl <= 1;
    sda <= 0; // Start condition
end else if (bit_count < 8) begin
    sda <= shift_reg[7];
    shift_reg <= shift_reg << 1;
    bit_count <= bit_count + 1;
    scl <= ~scl; // Toggle clock
end else begin
    sda <= 1; // Stop condition
end
```  

---  

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day47
   ```  

2. **Compile and Simulate**  
   ```bash
   iverilog -o tb_i2c_master i2c_master.v i2c_master_tb.v
   vvp tb_i2c_master
   ```  

3. **View Waveforms**  
   ```bash
   gtkwave i2c_master.vcd
   ```  

---  

## 💡 Key Learnings  

- **I2C Protocol Basics:** Explored the fundamentals of **serial communication** in embedded systems.  
- **Bitwise Data Transmission:** Implemented **bit shifting** and clock synchronization for I2C communication.  
- **Start/Stop Condition Handling:** Understood how to generate valid I2C control signals.  

---  

## 🔗 Resources  

- [I2C Protocol Basics](https://www.i2c-bus.org/)  
- [I2C in Verilog](https://www.chipverify.com/verilog/verilog-i2c-master)  

---  

## 🤝 Feedback  

I’d love to hear your thoughts on this **I2C Master design**! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  

