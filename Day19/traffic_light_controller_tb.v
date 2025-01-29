`timescale 1ns / 1ps

module traffic_light_controller_tb;
    reg [1:0] state;
    wire [2:0] light;

    traffic_light_controller uut (
        .state(state),
        .light(light)
    );

    initial begin
        $dumpfile("traffic_light_controller.vcd");
        $dumpvars(0, traffic_light_controller_tb);

        state = 2'b00; #10;
        state = 2'b01; #10;
        state = 2'b10; #10;
        state = 2'b11; #10;

        $finish;
    end
endmodule
