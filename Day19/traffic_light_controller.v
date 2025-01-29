module traffic_light_controller (
    input [1:0] state,
    output reg [2:0] light
);
    always @(*) begin
        case (state)
            2'b00: light = 3'b100;
            2'b01: light = 3'b010;
            2'b10: light = 3'b001;
            default: light = 3'b000;
        endcase
    end
endmodule
