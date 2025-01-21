// Binary-to-Gray Code Converter
module binary_to_gray (
    input wire [3:0] binary,  // 4-bit binary input
    output wire [3:0] gray    // 4-bit Gray code output
);

    // Conversion logic
    assign gray[3] = binary[3];             // MSB remains the same
    assign gray[2] = binary[3] ^ binary[2]; // XOR MSB with the next bit
    assign gray[1] = binary[2] ^ binary[1]; // XOR next two bits
    assign gray[0] = binary[1] ^ binary[0]; // XOR next two bits

endmodule
