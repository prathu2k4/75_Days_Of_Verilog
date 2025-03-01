// single_port_ram_tb.v
`timescale 1ns/1ps
module single_port_ram_tb;
    reg clk, we;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;
    // Instantiate DUT
    single_port_ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );
    // Clock Generation
    always #5 clk = ~clk;
    initial begin
   $dumpfile("single_port_ram.vcd");
   $dumpvars(0, single_port_ram_tb);
           clk = 0; we = 0; addr = 0; din = 0;
        #10 we = 1; addr = 4'b0001; din = 8'hA5; // Write A5 to address 1
        #10 we = 0; addr = 4'b0001; // Read from address 1
        #10 we = 1; addr = 4'b0010; din = 8'h3C; // Write 3C to address 2
        #10 we = 0; addr = 4'b0010; // Read from address 2
        #10 we = 1; addr = 4'b0001; din = 8'hFF; // Overwrite address 1 with FF
        #10 we = 0; addr = 4'b0001; // Read from address 1
        #20 $finish;
    end
endmodule
