/* Machine-generated using Migen */
module top(
	output reg user_led0,
	output reg user_led1,
	output reg user_led2
);

wire osch_clk;
reg [2:0] counter = 3'd0;
wire sys_clk;
wire sys_rst;
wire por_clk;
reg int_rst = 1'd1;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on


// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	user_led0 <= 1'd0;
	user_led1 <= 1'd0;
	user_led2 <= 1'd0;
	if ((counter[0] == 1'd1)) begin
		user_led0 <= 1'd1;
	end else begin
		if ((counter[1] == 1'd1)) begin
			user_led1 <= 1'd1;
		end else begin
			if ((counter[2] == 1'd1)) begin
				user_led2 <= 1'd1;
			end else begin
				user_led0 <= 1'd0;
				user_led1 <= 1'd0;
				user_led2 <= 1'd0;
			end
		end
	end
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign sys_clk = osch_clk;
assign por_clk = osch_clk;
assign sys_rst = int_rst;

always @(posedge por_clk) begin
	int_rst <= 1'd0;
end

always @(posedge sys_clk) begin
	counter <= (counter + 1'd1);
	if (sys_rst) begin
		counter <= 3'd0;
	end
end

OSCH #(
	.NOM_FREQ("15.65")
) OSCH (
	.STDBY(1'd0),
	.OSC(osch_clk)
);

endmodule
