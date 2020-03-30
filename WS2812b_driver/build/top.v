/* Machine-generated using Migen */
module top(
	output reg user_led0,
	output reg Dout
);

wire osch_clk;
reg [4:0] cnt = 5'd0;
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
	cnt <= (cnt + 1'd1);
	if ((cnt == 5'd19)) begin
		cnt <= 1'd0;
	end
	if ((cnt > 4'd10)) begin
		Dout <= 1'd0;
		user_led0 <= 1'd0;
	end else begin
		Dout <= 1'd1;
		user_led0 <= 1'd1;
	end
	if (sys_rst) begin
		user_led0 <= 1'd0;
		Dout <= 1'd0;
		cnt <= 5'd0;
	end
end

OSCH #(
	.NOM_FREQ("15.65")
) OSCH (
	.STDBY(1'd0),
	.OSC(osch_clk)
);

endmodule
