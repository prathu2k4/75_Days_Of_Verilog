// calculator_tb.v
`timescale 1ns/1ps
module calculator_tb;
    reg [3:0] a, b;
    reg [1:0] op;
    wire [3:0] result;
    // Instantiate DUT
    calculator uut (
        .a(a),
        .b(b),
        .op(op),
        .result(result)
    );
    initial begin
   $dumpfile("calculator.vcd");
   $dumpvars(0, calculator_tb);
        // Test Addition
        a = 4'b0011; b = 4'b0001; op = 2'b00; #10; // 3 + 1 = 4
        // Test Subtraction
        a = 4'b0100; b = 4'b0001; op = 2'b01; #10; // 4 - 1 = 3
        // Test AND
        a = 4'b1100; b = 4'b1010; op = 2'b10; #10; // 1100 & 1010 = 1000
        // Test OR
        #20 $finish;
    end
endmodule
