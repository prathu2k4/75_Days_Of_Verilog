module TestBasicGates;
    reg A, B;
    wire Y0, Y1, Y2, Y3, Y4, Y5;

    BasicGates uut (
        .A(A),
        .B(B),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3),
        .Y4(Y4),
        .Y5(Y5)
    );

    initial begin
        $dumpfile("dumpfile.vcd");
        $dumpvars(0, TestBasicGates);

        $display("A B | Y0 Y1 Y2 Y3 Y4 Y5");
        $monitor("%b %b |  %b  %b  %b  %b  %b  %b", A, B, Y0, Y1, Y2, Y3, Y4, Y5);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule
