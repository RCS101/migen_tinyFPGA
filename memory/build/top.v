/* Machine-generated using Migen */
module top(
	output reg user_led0
);

wire osch_clk;
reg [7:0] dataIn = 8'd0;
reg [7:0] bitmask = 8'd0;
wire sys_clk;
wire sys_rst;
wire por_clk;
reg int_rst = 1'd1;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign sys_clk = osch_clk;
assign por_clk = osch_clk;
assign sys_rst = int_rst;

always @(posedge por_clk) begin
	int_rst <= 1'd0;
end

always @(posedge sys_clk) begin
	if ((bitmask < 8'd255)) begin
		if ((dataIn & bitmask)) begin
			user_led0 <= 1'd1;
		end else begin
			user_led0 <= 1'd0;
		end
		bitmask <= (bitmask <<< 1'd1);
		if ((bitmask == 8'd128)) begin
			bitmask <= 1'd1;
		end
	end
	if (sys_rst) begin
		user_led0 <= 1'd0;
		bitmask <= 8'd0;
	end
end

OSCH #(
	.NOM_FREQ("15.65")
) OSCH (
	.STDBY(1'd0),
	.OSC(osch_clk)
);

endmodule
