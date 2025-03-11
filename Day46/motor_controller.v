// motor_controller.v
module motor_controller(
    input wire clk,        // Clock signal
    input wire enable,     // Enable signal
    input wire [7:0] speed, // Speed (Duty cycle 0-255)
    output reg pwm_out     // PWM output for motor control
);
    reg [7:0] counter;

    always @(posedge clk) begin
        if (!enable) 
            counter <= 0;  // Reset counter when disabled
        else 
            counter <= counter + 1;

        if (enable)
            pwm_out <= (counter < speed) ? 1 : 0;
        else
            pwm_out <= 0;
    end
endmodule
