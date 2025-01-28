`timescale 1ns / 1ps

module magnitude_comparator_tb;
    reg [3:0] a, b;
    wire a_gt_b, a_eq_b, a_lt_b;

    magnitude_comparator uut (
        .a(a),
        .b(b),
        .a_gt_b(a_gt_b),
        .a_eq_b(a_eq_b),
        .a_lt_b(a_lt_b)
    );

    initial begin
        $dumpfile("magnitude_comparator.vcd");
        $dumpvars(0, magnitude_comparator_tb);

        a = 4'b0100; b = 4'b0011; #10;
        a = 4'b0100; b = 4'b0100; #10;
        a = 4'b0011; b = 4'b0100; #10;

        $finish;
    end
endmodule
