`timescale 1ns / 1ps

module priority_encoder_tb;
    reg [7:0] in;
    wire [2:0] out;

    priority_encoder uut (
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("priority_encoder.vcd");
        $dumpvars(0, priority_encoder_tb);

        in = 8'b00000001; #10;
        in = 8'b00000100; #10;
        in = 8'b00100000; #10;
        in = 8'b10000000; #10;

        $finish;
    end
endmodule
