// digital_clock_tb.v
`timescale 1ns/1ps
module digital_clock_tb;
    reg clk, reset;
    wire [5:0] sec, min;
    wire [4:0] hr;
    // Instantiate DUT
    digital_clock uut (
        .clk(clk),
        .reset(reset),
        .sec(sec),
        .min(min),
        .hr(hr)
    );
    // Clock Generation
    always #5 clk = ~clk; // Simulating 1Hz clock
    initial begin
   $dumpfile("digital_clock.vcd");
   $dumpvars(0, digital_clock_tb);
        clk = 0; reset = 1;
        #10 reset = 0;
        #6000; // Simulate 1 minute
        #20 $finish;
    end
endmodule
