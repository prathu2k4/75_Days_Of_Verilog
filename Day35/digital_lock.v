 //digital_lock.v
module digital_lock(
    input clk, reset,
    input [3:0] key,
    output reg unlock
);
    parameter PASSWORD = 4'b1010;
    
    always @(posedge clk or posedge reset) begin
        if (reset)
            unlock <= 0;
        else if (key == PASSWORD)
            unlock <= 1;
        else
            unlock <= 0;
    end
endmodule
