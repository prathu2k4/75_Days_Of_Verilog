`timescale 1ns / 1ps
module t_ff_tb;
    reg clk, reset, t;
    wire q;

    t_ff uut (.clk(clk), .reset(reset), .t(t), .q(q));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("t_ff.vcd");
        $dumpvars(0, t_ff_tb);
        clk = 0; reset = 1; t = 0; #10;
        reset = 0; t = 1; #50;
        t = 0; #20;
        t = 1; #50;
        $finish;
    end
endmodule
