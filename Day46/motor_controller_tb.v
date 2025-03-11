// motor_controller_tb.v
`timescale 1ns/1ps

module motor_controller_tb;
    reg clk, enable;
    reg [7:0] speed;
    wire pwm_out;

    // Instantiate DUT
    motor_controller uut (
        .clk(clk),
        .enable(enable),
        .speed(speed),
        .pwm_out(pwm_out)
    );

    always #5 clk = ~clk; // Clock generation with 10ns period

    initial begin
        $dumpfile("motor_controller.vcd"); $dumpvars(0, motor_controller_tb);

        clk = 0; enable = 0; speed = 8'd0; // Initialize inputs
        #20; // Wait before starting tests

        enable = 1; speed = 8'd64; #200; // 25% duty cycle
        speed = 8'd128; #200; // 50% duty cycle
        speed = 8'd192; #200; // 75% duty cycle
        speed = 8'd255; #200; // 100% duty cycle
        speed = 8'd0; #200; // 0% duty cycle

        enable = 0; #100; // Disable motor
        enable = 1; speed = 8'd100; #200; // Re-enable at 100 speed

        enable = 0; #20; enable = 1; speed = 8'd180; #200; // Rapid enable toggle

        $finish;
    end
endmodule
