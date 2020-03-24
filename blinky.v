/* Machine-generated using Migen */
module top(
	input sys_clk,
	input sys_rst
);

reg led;
reg led2;
reg led3;
reg [2:0] counter = 3'd0;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on


// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	led <= 1'd0;
	led2 <= 1'd0;
	led3 <= 1'd0;
	if ((counter[0] == 1'd1)) begin
		led <= 1'd1;
	end else begin
		if ((counter[1] == 1'd1)) begin
			led2 <= 1'd1;
		end else begin
			if ((counter[2] == 1'd1)) begin
				led3 <= 1'd1;
			end else begin
				led <= 1'd0;
				led2 <= 1'd0;
				led3 <= 1'd0;
			end
		end
	end
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	counter <= (counter + 1'd1);
	if (sys_rst) begin
		counter <= 3'd0;
	end
end

endmodule
