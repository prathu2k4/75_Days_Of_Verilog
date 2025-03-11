// i2c_master.v
module i2c_master(
    input wire clk, start, 
    input wire [7:0] data_in, 
    output reg scl, sda
);
    reg [3:0] bit_count;
    reg [7:0] shift_reg;

    always @(posedge clk) begin
        if (start) begin
            bit_count <= 0;
            shift_reg <= data_in;
            scl <= 1;
            sda <= 0; // Start condition
        end else if (bit_count < 8) begin
            sda <= shift_reg[7];
            shift_reg <= shift_reg << 1;
            bit_count <= bit_count + 1;
            scl <= ~scl; // Toggle clock
        end else begin
            sda <= 1; // Stop condition
        end
    end
endmodule
