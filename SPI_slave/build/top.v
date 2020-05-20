/* Machine-generated using Migen */
module top(
	output user_led0,
	input user_sclk,
	input user_mosi,
	input user_cs
);

wire osch_clk;
reg [7:0] data = 8'd0;
reg error = 1'd0;
reg byte_ack = 1'd0;
reg [2:0] bit_no = 3'd0;
reg [2:0] state = 3'd0;
reg [2:0] next_state;
reg error_t_next_value;
reg error_t_next_value_ce;
reg [7:0] data_f_next_value0;
reg data_f_next_value_ce0;
reg [2:0] bit_no_f_next_value1;
reg bit_no_f_next_value_ce1;
reg byte_ack_f_next_value2;
reg byte_ack_f_next_value_ce2;
wire sys_clk;
wire sys_rst;
wire por_clk;
reg int_rst = 1'd1;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign user_led0 = byte_ack;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	next_state <= 3'd0;
	error_t_next_value <= 1'd0;
	error_t_next_value_ce <= 1'd0;
	data_f_next_value0 <= 8'd0;
	data_f_next_value_ce0 <= 1'd0;
	bit_no_f_next_value1 <= 3'd0;
	bit_no_f_next_value_ce1 <= 1'd0;
	byte_ack_f_next_value2 <= 1'd0;
	byte_ack_f_next_value_ce2 <= 1'd0;
	next_state <= state;
	case (state)
		1'd1: begin
			if (user_cs) begin
				error_t_next_value <= (error + 1'd1);
				error_t_next_value_ce <= 1'd1;
				next_state <= 1'd0;
			end else begin
				if (user_sclk) begin
					next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			if (user_cs) begin
				error_t_next_value <= (error + 1'd1);
				error_t_next_value_ce <= 1'd1;
				next_state <= 1'd0;
			end else begin
				if ((~user_sclk)) begin
					data_f_next_value0 <= {user_mosi, data[7:1]};
					data_f_next_value_ce0 <= 1'd1;
					bit_no_f_next_value1 <= (bit_no + 1'd1);
					bit_no_f_next_value_ce1 <= 1'd1;
					if ((bit_no == 3'd7)) begin
						next_state <= 3'd4;
						byte_ack_f_next_value2 <= (byte_ack + 1'd1);
						byte_ack_f_next_value_ce2 <= 1'd1;
					end else begin
						next_state <= 2'd3;
					end
				end
			end
		end
		2'd3: begin
			if (user_cs) begin
				error_t_next_value <= (error + 1'd1);
				error_t_next_value_ce <= 1'd1;
				next_state <= 1'd0;
			end else begin
				if (user_sclk) begin
					next_state <= 2'd2;
				end
			end
		end
		3'd4: begin
			byte_ack_f_next_value2 <= 1'd0;
			byte_ack_f_next_value_ce2 <= 1'd1;
			data_f_next_value0 <= 1'd0;
			data_f_next_value_ce0 <= 1'd1;
			next_state <= 1'd0;
		end
		default: begin
			if ((~user_cs)) begin
				if ((~byte_ack)) begin
					next_state <= 1'd1;
				end
			end
		end
	endcase
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
	state <= next_state;
	if (error_t_next_value_ce) begin
		error <= error_t_next_value;
	end
	if (data_f_next_value_ce0) begin
		data <= data_f_next_value0;
	end
	if (bit_no_f_next_value_ce1) begin
		bit_no <= bit_no_f_next_value1;
	end
	if (byte_ack_f_next_value_ce2) begin
		byte_ack <= byte_ack_f_next_value2;
	end
	if (sys_rst) begin
		data <= 8'd0;
		error <= 1'd0;
		byte_ack <= 1'd0;
		bit_no <= 3'd0;
		state <= 3'd0;
	end
end

OSCH #(
	.NOM_FREQ("15.65")
) OSCH (
	.STDBY(1'd0),
	.OSC(osch_clk)
);

endmodule
