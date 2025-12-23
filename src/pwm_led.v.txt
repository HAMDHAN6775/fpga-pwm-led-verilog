module pwm_led (
    input clk,
    input reset,
    input [7:0] duty_cycle,
    output reg led
);

reg [7:0] counter;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        counter <= 8'd0;
        led <= 1'b0;
    end else begin
        counter <= counter + 1'b1;
        led <= (counter < duty_cycle) ? 1'b1 : 1'b0;
    end
end

endmodule
