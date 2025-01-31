`timescale 1ns / 1ps

module d_flip_flop_tb;
    reg d, clk;
    wire q;

    d_flip_flop uut (
        .d(d),
        .clk(clk),
        .q(q)
    );

    initial begin
        $dumpfile("d_flip_flop.vcd");
        $dumpvars(0, d_flip_flop_tb);

        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        d = 0; #10;
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;

        $finish;
    end
endmodule
