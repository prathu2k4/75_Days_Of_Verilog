module AND_4Input (
    input [3:0] A,  
    output reg Y    
);
    integer i;

    always @(*) begin
        Y = 1'b1; 
        for (i = 0; i < 4; i = i + 1) begin
            Y = Y & A[i]; 
        end
    end
endmodule
