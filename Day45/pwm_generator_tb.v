// pwm_generator_tb.v
`timescale 1ns/1ps

module pwm_generator_tb;
    reg clk;
    reg [7:0] duty;
    wire pwm_out;

    // Instantiate DUT
    pwm_generator uut (
        .clk(clk),
        .duty(duty),
        .pwm_out(pwm_out)
    );

    always #5 clk = ~clk; // Clock generation (10ns period)

    initial begin
        $dumpfile("pwm_generator.vcd"); $dumpvars(0, pwm_generator_tb);
        clk = 0; duty = 8'd0; #200; // 0% duty cycle
        duty = 8'd64; #200; // 25% duty cycle
        duty = 8'd128; #200; // 50% duty cycle
        duty = 8'd192; #200; // 75% duty cycle
        duty = 8'd255; #200; // 100% duty cycle
        $finish;
    end
endmodule