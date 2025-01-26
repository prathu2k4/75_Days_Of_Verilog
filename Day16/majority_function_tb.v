`timescale 1ns / 1ps

module majority_function_tb;
    reg a, b, c;
    wire majority;

    majority_function uut (
        .a(a),
        .b(b),
        .c(c),
        .majority(majority)
    );

    initial begin
        $dumpfile("majority_function.vcd");
        $dumpvars(0, majority_function_tb);

        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;

        $finish;
    end
endmodule
