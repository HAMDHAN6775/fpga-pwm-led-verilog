`timescale 1ns/1ps

module pwm_led_tb;

reg clk;
reg reset;
reg [7:0] duty_cycle;
wire led;

pwm_led uut (
    .clk(clk),
    .reset(reset),
    .duty_cycle(duty_cycle),
    .led(led)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    duty_cycle = 8'd0;

    #20 reset = 0;

    #50 duty_cycle = 8'd64;
    #50 duty_cycle = 8'd128;
    #50 duty_cycle = 8'd192;

    #100 $stop;
end

endmodule
