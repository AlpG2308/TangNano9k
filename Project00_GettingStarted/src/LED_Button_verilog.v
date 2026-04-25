//Top Level Module -> Not included in the other modules
// Turn on one LED by another with btn_1 and turn off with btn_2 -> Stack operation
module led_shift (
    //Define button 1 and 2 as input, by default wire we still add it
    input wire clk,
    input btn_1,
    input btn_2,
    //six LEDs so we create a reg with width n-1
    output reg [5:0] leds_on = 0
);

// make sure no debouncing occurs
//sync -> reference to input btn and check edge based on that
reg btn_1_debounce, btn_2_debounce;
always @(posedge clk) begin
    btn_1_debounce<=btn_1;
    btn_2_debounce<=btn_2;
end

//define wire-behaviour of sync btn
wire btn_1_edge = btn_1 & ~btn_1_debounce;
wire btn_2_edge = btn_2 & ~btn_2_debounce;

//shift operation to control LEDs
//if btn_1 edge is detected shift left, push 1
// if btn_2 edge shift right, push 0
// just concatenate last v
always @(posedge clk) begin
if (btn_1_edge)
    leds_on <= {leds_on[4:0],1'b1};
else if (btn_2_edge)
    leds_on <= {1'b0,leds_on[5:1]};
end

endmodule