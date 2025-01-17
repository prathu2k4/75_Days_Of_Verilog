`timescale 1ns/1ps

module tb_four_bit_subtractor;
    reg [3:0] A;        initial begin
    $dumpfile("four_bit_subtractor.vcd");
    $dumpvars(0, tb_four_bit_subtractor);
    
    reg [3:0] B;        
    wire [3:0] Diff;    
    wire Borrow;        

    // Instantiate the 4-bit subtractor module
    four_bit_subtractor uut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borrow(Borrow)
    );

    initial begin
        
        $dumpfile("four_bit_subtractor.vcd");
        $dumpvars(0, tb_four_bit_subtractor);

        // Test cases
        A = 4'b0110; B = 4'b0010; #10; 

        A = 4'b1001; B = 4'b0101; #10; 

        A = 4'b0011; B = 4'b0111; #10; 

        A = 4'b0000; B = 4'b0001; #10; 

        A = 4'b1111; B = 4'b1111; #10; 

        A = 4'b0100; B = 4'b1100; #10; 

        // End simulation
        $finish;
    end
endmodule
