//mealy_vending_machine.v
 module vending_machine(
    input clk, reset, coin, select,
    output reg dispense
);
    reg [1:0] state, next_state;
    
    localparam IDLE = 2'b00, COIN = 2'b01, DISPENSE = 2'b10;
    
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end
    
    always @(*) begin
        case (state)
            IDLE: next_state = coin ? COIN : IDLE;
            COIN: next_state = select ? DISPENSE : COIN;
            DISPENSE: next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end
    
    always @(posedge clk) begin
        dispense <= (state == DISPENSE);
    end
endmodule
