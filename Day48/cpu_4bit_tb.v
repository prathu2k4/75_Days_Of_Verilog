// cpu_4bit_tb.v
`timescale 1ns/1ps
module cpu_4bit_tb;
    reg clk, reset;
    reg [7:0] instruction;
    wire [3:0] acc;
    // Instantiate DUT
    cpu_4bit uut (
        .clk(clk),
        .reset(reset),
        .instruction(instruction),
        .acc(acc)
    );
    // Clock Generation
    always #5 clk = ~clk;
    initial begin
   $dumpfile("cpu_4bit.vcd");
   $dumpvars(0, cpu_4bit_tb);
        clk = 0; reset = 1; #10;
        reset = 0;
        instruction = 8'b00010011; #10; // ADD 3
        instruction = 8'b00100001; #10; // SUB 1
        instruction = 8'b00111100; #10; // AND 12
        instruction = 8'b01000010; #10; // OR 2
        #20 $finish;
    end
endmodule
