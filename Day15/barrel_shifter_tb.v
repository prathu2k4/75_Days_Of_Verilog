`timescale 1ns / 1ps

module barrel_shifter_tb;
    reg [3:0] in;
    reg [1:0] shift;
    wire [3:0] out;

    barrel_shifter uut (
        .in(in),
        .shift(shift),
        .out(out)
    );

    initial begin
        $dumpfile("barrel_shifter.vcd");
        $dumpvars(0, barrel_shifter_tb);

        in = 4'b1101; shift = 2'b00; #10;
        in = 4'b1101; shift = 2'b01; #10;
        in = 4'b1101; shift = 2'b10; #10;
        in = 4'b1101; shift = 2'b11; #10;

        $finish;
    end
endmodule
