//clock_divider_tb.v
`timescale 1ns / 1ps

module clock_divider_tb;
    reg clk, reset;
    wire clk_out;

    // Instantiate the clock divider module
    clock_divider uut (
        .clk(clk),
        .reset(reset),
        .clk_out(clk_out)
    );

    // Generate clock with 10ns period (5ns high, 5ns low)
    always #5 clk = ~clk;

    initial begin
        $dumpfile("clock_divider.vcd");
        $dumpvars(0, clock_divider_tb);

        // Initialize signals
        clk = 0;
        reset = 1;
        #10;
        reset = 0;  // Release reset after 10ns

        // Run for a sufficient time to observe clk_out transitions
        #500;
        $finish;
    end
endmodule
