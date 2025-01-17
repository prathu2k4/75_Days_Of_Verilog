// 4-bit Subtractor using 2's complement
module four_bit_subtractor(
    input [3:0] A,    
    input [3:0] B,    
    output [3:0] Diff, 
    output Borrow       
);
    wire [3:0] B_complement;  
    wire Carry;

    // Compute 2's complement of B
    assign B_complement = ~B + 4'b0001;

    assign {Carry, Diff} = A + B_complement;

    assign Borrow = (A < B);

endmodule
