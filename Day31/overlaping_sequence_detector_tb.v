 //overlaping_sequence_detector_tb.v
`timescale 1ns/1ps

module tb_sequence_detector;
    reg clk, reset, in;
    wire out;

    sequence_detector uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $dumpfile("sequence_detector.vcd");
        $dumpvars(0, tb_sequence_detector);

        // Initialize
        clk = 0; reset = 1; in = 0;
        #10 reset = 0;

        // Apply test patterns
        #10 in = 1; #10 in = 0; #10 in = 1; // 101 -> out should be 1
        #1  if (out !== 1) $display("Error: 101 not detected!");

        #10 in = 1; #10 in = 1; #10 in = 0; #10 in = 1; // Overlapping 101 -> out should be 1 twice
        #1  if (out !== 1) $display("Error: Overlapping 101 not detected!");

        #10 in = 0; #10 in = 1; // Testing additional sequence

        #20 $finish;
    end
endmodule
