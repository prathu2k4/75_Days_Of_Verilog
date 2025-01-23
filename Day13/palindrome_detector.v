module palindrome_detector (
    input [3:0] data,  
    output is_palindrome 
);
    
    assign is_palindrome = (data[3] == data[0]) && (data[2] == data[1]);
endmodule
