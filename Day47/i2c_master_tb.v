// i2c_master_tb.v
`timescale 1ns/1ps
module i2c_master_tb;
    reg clk, start;
    reg [7:0] data_in;
    wire scl, sda;
    // Instantiate DUT
    i2c_master uut (
        .clk(clk),
        .start(start),
        .data_in(data_in),
        .scl(scl),
        .sda(sda)
    );
    // Clock Generation
    always #5 clk = ~clk;
    initial begin
   $dumpfile("i2c_master.vcd");
   $dumpvars(0, i2c_master_tb);
        clk = 0;
        start = 0;
        data_in = 8'hA5; // Example data to transmit
        #10 start = 1; #10 start = 0;
        #100;
        #20 $finish;
    end
endmodule
