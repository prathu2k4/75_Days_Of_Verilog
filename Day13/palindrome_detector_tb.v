`timescale 1ns / 1ps

module palindrome_detector_tb;
    reg [3:0] data;        
    wire is_palindrome;    

    // Instantiate the Palindrome Detector
    palindrome_detector uut (
        .data(data),
        .is_palindrome(is_palindrome)
    );

    initial begin
        $dumpfile("palindrome_detector.vcd");
        $dumpvars(0, palindrome_detector_tb);
        
        data = 4'b0000; #10; 
        data = 4'b1001; #10; 
        data = 4'b0110; #10; 
        data = 4'b1111; #10; 
        data = 4'b1010; #10; 
        data = 4'b0101; #10; 
        data = 4'b0010; #10; 
        data = 4'b1000; #10; 

        // Finish simulation
        $finish;
    end
endmodule
