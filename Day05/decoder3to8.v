module decoder3to8 (
    input wire [2:0] a,     
    input wire en,          
    output reg [7:0] y     
);

    always @(*) begin
        if (en) begin
            y = 8'b00000000;      
            y[a] = 1'b1;          
        end 
        else begin
            y = 8'b00000000;      
        end
    end

endmodule
