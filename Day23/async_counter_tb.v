// async_counter_tb.v
`timescale 1ns / 1ps
module async_counter_tb;
    reg clk, reset;
    wire [3:0] q;

    async_counter uut (.clk(clk), .reset(reset), .q(q));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("async_counter.vcd");
        $dumpvars(0, async_counter_tb);
        clk = 0; reset = 1; #10;
        reset = 0; #100;
        $finish;
    end
endmodule
