//frequency_counter.v

module frequency_counter (
    input clk, signal_in, reset,
    output reg [7:0] freq_count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            freq_count <= 0;
        else if (signal_in)
            freq_count <= freq_count + 1;
    end
endmodule
