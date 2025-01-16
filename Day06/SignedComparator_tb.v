`timescale 1ns/1ps

module SignedComparator_tb;


reg signed [3:0] A, B;  
wire GT, LT, EQ;        


SignedComparator dut (
    .A(A),
    .B(B),
    .GT(GT),
    .LT(LT),
    .EQ(EQ)
);

initial begin
    
    $dumpfile("SignedComparator.vcd");
    $dumpvars(0, SignedComparator_tb);

    
    A = 4'b0110; B = 4'b0011; #10; 
    A = 4'b1100; B = 4'b0111; #10; 
    A = 4'b1010; B = 4'b1010; #10; 
    A = 4'b0001; B = 4'b1000; #10; 
    A = 4'b1001; B = 4'b1001; #10; 
    A = 4'b0111; B = 4'b1110; #10; 

    
    $finish;
end

endmodule