//serial_to_parallel.v
module serial_to_parallel (
    input clk, reset, serial_in,
    output reg [7:0] parallel_out
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            parallel_out <= 0;
        else
            parallel_out <= {parallel_out[6:0], serial_in};
    end
endmodule
