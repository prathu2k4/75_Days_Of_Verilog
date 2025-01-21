`timescale 1ns / 1ps

// Testbench for Binary-to-Gray Code Converter
module tb_binary_to_gray;

    reg [3:0] binary;        // 4-bit binary input
    wire [3:0] gray;         // 4-bit Gray code output

    // Instantiate the binary-to-gray module
    binary_to_gray uut (
        .binary(binary),
        .gray(gray)
    );

    integer i;

    initial begin
        // Dump waveforms for GTKWave
        $dumpfile("binary_to_gray.vcd");
        $dumpvars(0, tb_binary_to_gray);

        // Test all possible 4-bit binary inputs (0 to 15)
        for (i = 0; i < 16; i = i + 1) begin
            binary = i[3:0];   // Assign 4-bit binary value
            #10;              // Wait for 10 time units
        end

        #10 $finish;          // End simulation
    end

endmodule
