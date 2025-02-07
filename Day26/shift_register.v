module shift_register (
    input clk, reset, shift_en, serial_in,
    output reg [7:0] out
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            out <= 8'b00000000;
        else if (shift_en)
            out <= {out[6:0], serial_in};
    end
endmodule
