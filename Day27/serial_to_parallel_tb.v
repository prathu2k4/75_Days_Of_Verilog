// serial_to_parallel_tb.v

`timescale 1ns / 1ps

module serial_to_parallel_tb;
    reg clk, reset, serial_in;
    wire [7:0] parallel_out;

    serial_to_parallel uut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .parallel_out(parallel_out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("serial_to_parallel.vcd");
        $dumpvars(0, serial_to_parallel_tb);

        clk = 0; reset = 1; serial_in = 0;
        #10 reset = 0;

        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;

        #50;
        $finish;
    end
endmodule
