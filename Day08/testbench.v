`timescale 1ns / 1ps

// Testbench for 7-Segment Display Decoder
module tb_seven_segment_decoder;

    reg [3:0] bcd;          
    wire [6:0] seg;         

    // Instantiate the decoder module
    seven_segment_decoder uut (
        .bcd(bcd),
        .seg(seg)
    );

    integer i;

    initial begin
        
        $dumpfile("seven_segment_decoder.vcd");
        $dumpvars(0, tb_seven_segment_decoder);

        
        for (i = 0; i < 16; i = i + 1) begin
            bcd = i[3:0];   // Assign 4-bit value
            #10;            // Wait for 10 time units
        end

        #10 $finish;
    end

endmodule


/*
Here’s your updated tracker:

| Day | Project Name              | Description                                                             | Link                                       |
|-----|---------------------------|-------------------------------------------------------------------------|--------------------------------------------|
|  1  | Basic Logic Gates         | AND, OR, NOT, XOR, XNOR, NOR                                           | [Day 1 - Basic Gates](./Day01)            |
|  2  | 4-Input AND, BCD Adder, Ripple Carry Adder | Implementation of a 4-input AND gate, BCD adder with correction logic, and a 4-bit ripple carry adder | [Day 2 - Adders and AND Gate](./Day02)    |
|  3  | 4:1 Multiplexer, Carry Look-Ahead Adder | Designed a 4:1 MUX and implemented a carry look-ahead adder                    | [Day 3 - MUX and Carry Look-Ahead Adder](./Day03) |
|  4  | Magnitude Comparator       | 2-bit Magnitude Comparator                                             | [Day 4 - Comparator](./Day04)             |
|  5  | 3-to-8 Decoder             | Implemented a 3-to-8 Decoder with enable signal                        | [Day 5 - Decoder](./Day05)                |
|  6  | 4-Bit Signed Comparator    | Designed a comparator for signed 4-bit numbers                        | [Day 6 - Signed Comparator](./Day06)      |
|  7  | 4-Bit Subtractor           | Created a 4-bit subtractor using 2's complement logic                  | [Day 7 - Subtractor](./Day07)             |
|  8  | 7-Segment Display Decoder  | Developed a BCD-to-7-segment display decoder for numeric visualization | [Day 8 - Seven Segment Decoder](./Day08)  |
*/