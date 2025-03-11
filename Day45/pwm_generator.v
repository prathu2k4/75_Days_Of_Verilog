// pwm_generator.v
module pwm_generator(
    input wire clk,        // Clock signal
    input wire [7:0] duty, // Duty cycle (0-255)
    output reg pwm_out     // PWM output
);
    reg [7:0] counter;

    always @(posedge clk) begin
        counter <= (counter == 8'd255) ? 8'd0 : counter + 1; // Reset counter at 255
        pwm_out <= (counter < duty) ? 1 : 0; // PWM logic
    end
endmodule
