// temperature_alert_tb.v
`timescale 1ns/1ps
module temperature_alert_tb;
    reg [7:0] temperature, threshold;
    wire alert;
    // Instantiate DUT
    temperature_alert uut (
        .temperature(temperature),
        .threshold(threshold),
        .alert(alert)
    );
    initial begin
   $dumpfile("temperature_alert.vcd");
   $dumpvars(0, temperature_alert_tb);
        threshold = 8'd50; // Set threshold to 50
        // Below threshold
        temperature = 8'd30; #10;
        temperature = 8'd45; #10;
        // At threshold
        temperature = 8'd50; #10;
        // Above threshold
        temperature = 8'd55; #10;
        temperature = 8'd70; #10;
        #20 $finish;
    end
endmodule
