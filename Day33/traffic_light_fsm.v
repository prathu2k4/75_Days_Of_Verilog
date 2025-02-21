 //traffic_light_fsm.v
 module traffic_light(
    input clk, reset,
    output reg [1:0] light // 00=Red, 01=Green, 10=Yellow
);
    reg [1:0] state;
    reg [3:0] counter;
    
    localparam RED = 2'b00, GREEN = 2'b01, YELLOW = 2'b10;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= RED;
            counter <= 0;
        end else begin
            counter <= counter + 1;
            case (state)
                RED: if (counter == 5) begin state <= GREEN; counter <= 0; end
                GREEN: if (counter == 3) begin state <= YELLOW; counter <= 0; end
                YELLOW: if (counter == 2) begin state <= RED; counter <= 0; end
            endcase
        end
    end
    
    always @(*) begin
        light = state;
    end
endmodule
