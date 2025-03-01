# 🛠️ Day 41: Single Port RAM in Verilog  

Welcome to Day 41 of my **75 Days of Verilog Coding Challenge**! 🎉  

Today, I implemented a **Single Port RAM** in Verilog. This memory module allows **both read and write operations** using a single address and data bus, commonly used in embedded systems and digital design.  

---  

## ✨ Project Overview  

The **Single Port RAM** module supports:  
- **Write Enable (we):** Controls write operation.  
- **Clocked Operation:** Ensures data integrity with synchronous read and write.  
- **Parameterized Design:** Configurable **address width** and **data width**.  

### **Inputs and Outputs**  
- **Inputs:**  
  - `clk`: Clock signal  
  - `we`: Write Enable signal  
  - `addr`: Address of memory location  
  - `din`: Data input for write operation  
- **Output:**  
  - `dout`: Data output for read operation  

---  

## ⚙️ How It Works  

- **Write Operation:**  
  When `we` is high, data from `din` is written to the memory location specified by `addr`.  

- **Read Operation:**  
  The data stored at the address specified by `addr` is driven to the output `dout`.  
  ```verilog
  if (we)
      mem[addr] <= din; // Write operation
  dout <= mem[addr];    // Read operation
  ```  

This design provides **synchronous read and write** operations, ensuring **data stability** and **integrity**.  

---  

## 🛠️ Simulation Steps  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/prathu2k4/75_Days_Of_Verilog.git
   cd 75_Days_Of_Verilog/Day41
   ```  

2. **Compile and Simulate**  
   Run the following commands:  
   ```bash
   iverilog -o tb_single_port_ram single_port_ram.v single_port_ram_tb.v
   vvp tb_single_port_ram
   ```  

3. **View Waveforms**  
   Open the generated `single_port_ram.vcd` file in GTKWave:  
   ```bash
   gtkwave single_port_ram.vcd
   ```  

---  

## 💡 Key Learnings  

- **Memory Design:** Understood how to implement a single port RAM in Verilog.  
- **Parameterized Modules:** Learned to design **scalable and reusable modules** using parameters for address and data width.  
- **Synchronous Memory Operations:** Ensured data integrity with clocked read and write operations.  

---  

## 🔗 Resources  

- [Verilog RAM Design](https://www.chipverify.com/verilog/verilog-ram)  
- [Parameterized Modules in Verilog](https://www.chipverify.com/verilog/verilog-parameterized-modules)  

---  

## 🤝 Feedback  

I'd love to hear your thoughts on this Single Port RAM design! Connect with me on [LinkedIn](https://www.linkedin.com/in/pratham-jainvs) to share insights or collaborate on future projects. 😊  