//sequence_detector_tb.v
`timescale 1ns / 1ps

module sequence_detector_tb;
    reg clk, reset, in;
    wire detected;

    // Instantiate the sequence detector module
    sequence_detector uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .detected(detected)
    );

    always #5 clk = ~clk;

    // Task to apply a sequence with monitoring
    task apply_input(input [7:0] sequence);
        integer i;
        for (i = 0; i < 8; i = i + 1) begin
            in = sequence[i];
            #10; // Wait for one clock cycle
        end
    endtask

    initial begin
        $dumpfile("sequence_detector.vcd");
        $dumpvars(0, sequence_detector_tb);

        // Initialize signals
        clk = 0;
        reset = 1;
        in = 0;

        #10 reset = 0; // Release reset after 10ns

        // Apply test sequences
        apply_input(8'b00010100); // Single '101' pattern

        apply_input(8'b10101010); // Two overlapping '101' patterns

        apply_input(8'b11001100); // No valid '101' sequence

        #50;
        $finish;
    end
endmodule
