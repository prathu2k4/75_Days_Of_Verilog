`timescale 1ns / 1ps

module shift_register_tb;
    reg clk, reset, shift_en, serial_in;
    wire [7:0] out;

    // Instantiate the shift register module
    shift_register uut (
        .clk(clk),
        .reset(reset),
        .shift_en(shift_en),
        .serial_in(serial_in),
        .out(out)
    );

    // Clock generation: toggle every 5 time units
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        $dumpfile("8bit_shift_register.vcd");
        $dumpvars(0, shift_register_tb);

        clk = 0;
        reset = 1;
        shift_en = 0;
        serial_in = 0;

        #10 reset = 0; // Deassert reset
        shift_en = 1; // Enable shifting

        // Provide serial input: 10110011
        serial_in = 1; #10; // Bit 1
        serial_in = 0; #10; // Bit 0
        serial_in = 1; #10; // Bit 1
        serial_in = 1; #10; // Bit 1
        serial_in = 0; #10; // Bit 0
        serial_in = 0; #10; // Bit 0
        serial_in = 1; #10; // Bit 1
        serial_in = 1; #10; // Bit 1

        #50; // Wait for some time
        $finish;
    end
endmodule
