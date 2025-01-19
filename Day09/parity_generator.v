module parity_generator (
    input wire [3:0] data,  
    output wire even_parity,
    output wire odd_parity  
);
    
    assign even_parity = data[0] ^ data[1] ^ data[2] ^ data[3];
   
    assign odd_parity = ~even_parity;

endmodule
