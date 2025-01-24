`timescale 1ns / 1ps

module twos_complement_tb;
    reg [3:0] in;
    wire [3:0] out;

    twos_complement uut (
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("twos_complement.vcd");
        $dumpvars(0, twos_complement_tb);

        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;
        in = 4'b1111; #10;
        in = 4'b1100; #10;
        in = 4'b1010; #10;

        $finish;
    end
endmodule
