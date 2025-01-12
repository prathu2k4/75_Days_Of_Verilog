module TestAND4Input;
    reg [3:0] A;   // 4-bit input
    wire Y;        // Output

    AND_4Input uut (
        .A(A),
        .Y(Y)
    );

    initial begin
        $dumpfile("dumpfile.vcd");
        $dumpvars(0, TestAND4Input);

        $display("A      | Y");
        $monitor("%b | %b", A, Y);

        // Test all possible input combinations (0 to 15)
        A = 4'b0000; #10;
        A = 4'b0001; #10;
        A = 4'b0010; #10;
        A = 4'b0011; #10;
        A = 4'b0100; #10;
        A = 4'b0101; #10;
        A = 4'b0110; #10;
        A = 4'b0111; #10;
        A = 4'b1000; #10;
        A = 4'b1001; #10;
        A = 4'b1010; #10;
        A = 4'b1011; #10;
        A = 4'b1100; #10;
        A = 4'b1101; #10;
        A = 4'b1110; #10;
        A = 4'b1111; #10;

        $finish;
    end
endmodule
