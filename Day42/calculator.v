// calculator.v
module calculator(
    input wire [3:0] a, b,
    input wire [1:0] op,  // 00: Add, 01: Sub, 10: AND, 11: OR
    output reg [3:0] result
);
    always @(*) begin
        case (op)
            2'b00: result = a + b;  // Addition
            2'b01: result = a - b;  // Subtraction
            2'b10: result = a & b;  // Bitwise AND
            2'b11: result = a | b;  // Bitwise OR
            default: result = 4'b0000;
        endcase
    end
endmodule
