`timescale 1ns / 1ps

module tb_binary_to_gray;

    reg [3:0] binary;        
    wire [3:0] gray;        

    // Instantiate the binary-to-gray module
    binary_to_gray uut (
        .binary(binary),
        .gray(gray)
    );

    integer i;

    initial begin
        $dumpfile("binary_to_gray.vcd");
        $dumpvars(0, tb_binary_to_gray);

        for (i = 0; i < 16; i = i + 1) begin
            binary = i[3:0];
            #10;
        end

        #10 $finish;          // End simulation
    end

endmodule
