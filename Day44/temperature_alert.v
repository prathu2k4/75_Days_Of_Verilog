// temperature_alert.v
module temperature_alert(
    input wire [7:0] temperature,  // 8-bit temperature input
    input wire [7:0] threshold,    // 8-bit threshold
    output reg alert               // Alert signal
);
    always @(*) begin
        if (temperature >= threshold)
            alert = 1;
        else
            alert = 0;
    end
endmodule
