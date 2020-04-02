/* Machine-generated using Migen */
module top(
	input user_sclk,
	input user_mosi,
	input user_cs,
	output user_led0,
	output reg Dout
);

wire osch_clk;
reg [7:0] data = 8'd0;
reg [23:0] led_data = 24'd0;
reg error = 1'd0;
reg [1:0] byte_no = 2'd0;
wire [23:0] value;
reg dataIn = 1'd0;
reg [23:0] bitmask = 24'd0;
reg [4:0] cnt = 5'd0;
reg [4:0] bit_no0 = 5'd0;
reg bit_st = 1'd0;
reg [2:0] bit_no1 = 3'd0;
reg [1:0] ws2812b_state = 2'd0;
reg [1:0] ws2812b_next_state;
reg DOUT_obj_next_value0;
reg DOUT_obj_next_value_ce0;
reg [23:0] bitmask_next_value1;
reg bitmask_next_value_ce1;
reg [4:0] cnt_next_value2;
reg cnt_next_value_ce2;
reg bit_st_next_value3;
reg bit_st_next_value_ce3;
reg [4:0] bit_no0_next_value4;
reg bit_no0_next_value_ce4;
reg dataIn_next_value5;
reg dataIn_next_value_ce5;
reg [2:0] fsm_state = 3'd0;
reg [2:0] fsm_next_state;
reg error_t_next_value0;
reg error_t_next_value_ce0;
reg [7:0] data_f_next_value0;
reg data_f_next_value_ce0;
reg [23:0] led_data_f_next_value1;
reg led_data_f_next_value_ce1;
reg [2:0] bit_no1_f_next_value2;
reg bit_no1_f_next_value_ce2;
reg [1:0] byte_no_f_next_value3;
reg byte_no_f_next_value_ce3;
reg dataIn_t_next_value1;
reg dataIn_t_next_value_ce1;
wire sys_clk;
wire sys_rst;
wire por_clk;
reg int_rst = 1'd1;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign value = led_data;
assign user_led0 = Dout;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	ws2812b_next_state <= 2'd0;
	DOUT_obj_next_value0 <= 1'd0;
	DOUT_obj_next_value_ce0 <= 1'd0;
	bitmask_next_value1 <= 24'd0;
	bitmask_next_value_ce1 <= 1'd0;
	cnt_next_value2 <= 5'd0;
	cnt_next_value_ce2 <= 1'd0;
	bit_st_next_value3 <= 1'd0;
	bit_st_next_value_ce3 <= 1'd0;
	bit_no0_next_value4 <= 5'd0;
	bit_no0_next_value_ce4 <= 1'd0;
	dataIn_next_value5 <= 1'd0;
	dataIn_next_value_ce5 <= 1'd0;
	ws2812b_next_state <= ws2812b_state;
	case (ws2812b_state)
		1'd1: begin
			if ((~Dout)) begin
				DOUT_obj_next_value0 <= 1'd1;
				DOUT_obj_next_value_ce0 <= 1'd1;
				bit_st_next_value3 <= 1'd0;
				bit_st_next_value_ce3 <= 1'd1;
			end
			if (((value & bitmask) == bitmask)) begin
				if ((cnt > 4'd9)) begin
					ws2812b_next_state <= 2'd2;
					DOUT_obj_next_value0 <= 1'd0;
					DOUT_obj_next_value_ce0 <= 1'd1;
				end
			end else begin
				if ((cnt > 3'd5)) begin
					ws2812b_next_state <= 2'd2;
					DOUT_obj_next_value0 <= 1'd0;
					DOUT_obj_next_value_ce0 <= 1'd1;
				end
			end
		end
		2'd2: begin
			if ((cnt == 5'd19)) begin
				bit_no0_next_value4 <= (bit_no0 + 1'd1);
				bit_no0_next_value_ce4 <= 1'd1;
				if ((bit_no0 == 5'd23)) begin
					dataIn_next_value5 <= 1'd0;
					dataIn_next_value_ce5 <= 1'd1;
					ws2812b_next_state <= 2'd3;
				end else begin
					bitmask_next_value1 <= (bitmask >>> 1'd1);
					bitmask_next_value_ce1 <= 1'd1;
					bit_st_next_value3 <= 1'd1;
					bit_st_next_value_ce3 <= 1'd1;
					ws2812b_next_state <= 1'd1;
				end
			end
		end
		2'd3: begin
			bit_no0_next_value4 <= 1'd0;
			bit_no0_next_value_ce4 <= 1'd1;
			DOUT_obj_next_value0 <= 1'd0;
			DOUT_obj_next_value_ce0 <= 1'd1;
			ws2812b_next_state <= 1'd0;
		end
		default: begin
			DOUT_obj_next_value0 <= 1'd0;
			DOUT_obj_next_value_ce0 <= 1'd1;
			if (dataIn) begin
				ws2812b_next_state <= 1'd1;
				bitmask_next_value1 <= 24'd8388608;
				bitmask_next_value_ce1 <= 1'd1;
				cnt_next_value2 <= 1'd0;
				cnt_next_value_ce2 <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	fsm_next_state <= 3'd0;
	error_t_next_value0 <= 1'd0;
	error_t_next_value_ce0 <= 1'd0;
	data_f_next_value0 <= 8'd0;
	data_f_next_value_ce0 <= 1'd0;
	led_data_f_next_value1 <= 24'd0;
	led_data_f_next_value_ce1 <= 1'd0;
	bit_no1_f_next_value2 <= 3'd0;
	bit_no1_f_next_value_ce2 <= 1'd0;
	byte_no_f_next_value3 <= 2'd0;
	byte_no_f_next_value_ce3 <= 1'd0;
	dataIn_t_next_value1 <= 1'd0;
	dataIn_t_next_value_ce1 <= 1'd0;
	fsm_next_state <= fsm_state;
	case (fsm_state)
		1'd1: begin
			if (user_cs) begin
				error_t_next_value0 <= 1'd1;
				error_t_next_value_ce0 <= 1'd1;
				fsm_next_state <= 3'd5;
			end else begin
				if (user_sclk) begin
					fsm_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			if (user_cs) begin
				error_t_next_value0 <= 1'd1;
				error_t_next_value_ce0 <= 1'd1;
				fsm_next_state <= 3'd5;
			end else begin
				if ((~user_sclk)) begin
					data_f_next_value0 <= {user_mosi, data[7:1]};
					data_f_next_value_ce0 <= 1'd1;
					led_data_f_next_value1 <= {user_mosi, led_data[23:1]};
					led_data_f_next_value_ce1 <= 1'd1;
					bit_no1_f_next_value2 <= (bit_no1 + 1'd1);
					bit_no1_f_next_value_ce2 <= 1'd1;
					if ((bit_no1 == 3'd7)) begin
						byte_no_f_next_value3 <= (byte_no + 1'd1);
						byte_no_f_next_value_ce3 <= 1'd1;
						fsm_next_state <= 3'd4;
					end else begin
						fsm_next_state <= 2'd3;
					end
				end
			end
		end
		2'd3: begin
			if (user_cs) begin
				error_t_next_value0 <= 1'd1;
				error_t_next_value_ce0 <= 1'd1;
				fsm_next_state <= 3'd5;
			end else begin
				if (user_sclk) begin
					fsm_next_state <= 2'd2;
				end
			end
		end
		3'd4: begin
			if ((byte_no == 2'd3)) begin
				dataIn_t_next_value1 <= 1'd1;
				dataIn_t_next_value_ce1 <= 1'd1;
				bit_no1_f_next_value2 <= 1'd0;
				bit_no1_f_next_value_ce2 <= 1'd1;
				byte_no_f_next_value3 <= 1'd0;
				byte_no_f_next_value_ce3 <= 1'd1;
				error_t_next_value0 <= 1'd0;
				error_t_next_value_ce0 <= 1'd1;
			end
			fsm_next_state <= 1'd0;
		end
		3'd5: begin
			bit_no1_f_next_value2 <= 1'd0;
			bit_no1_f_next_value_ce2 <= 1'd1;
			byte_no_f_next_value3 <= 1'd0;
			byte_no_f_next_value_ce3 <= 1'd1;
			data_f_next_value0 <= 1'd0;
			data_f_next_value_ce0 <= 1'd1;
			if ((dataIn == 1'd0)) begin
				led_data_f_next_value1 <= 1'd0;
				led_data_f_next_value_ce1 <= 1'd1;
			end
			error_t_next_value0 <= 1'd0;
			error_t_next_value_ce0 <= 1'd1;
			fsm_next_state <= 1'd0;
		end
		default: begin
			if ((~user_cs)) begin
				fsm_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
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
	ws2812b_state <= ws2812b_next_state;
	if (DOUT_obj_next_value_ce0) begin
		Dout <= DOUT_obj_next_value0;
	end
	if (bitmask_next_value_ce1) begin
		bitmask <= bitmask_next_value1;
	end
	if (cnt_next_value_ce2) begin
		cnt <= cnt_next_value2;
	end
	if (bit_st_next_value_ce3) begin
		bit_st <= bit_st_next_value3;
	end
	if (bit_no0_next_value_ce4) begin
		bit_no0 <= bit_no0_next_value4;
	end
	if (dataIn_next_value_ce5) begin
		dataIn <= dataIn_next_value5;
	end
	fsm_state <= fsm_next_state;
	if (error_t_next_value_ce0) begin
		error <= error_t_next_value0;
	end
	if (data_f_next_value_ce0) begin
		data <= data_f_next_value0;
	end
	if (led_data_f_next_value_ce1) begin
		led_data <= led_data_f_next_value1;
	end
	if (bit_no1_f_next_value_ce2) begin
		bit_no1 <= bit_no1_f_next_value2;
	end
	if (byte_no_f_next_value_ce3) begin
		byte_no <= byte_no_f_next_value3;
	end
	if (dataIn_t_next_value_ce1) begin
		dataIn <= dataIn_t_next_value1;
	end
	if (sys_rst) begin
		data <= 8'd0;
		led_data <= 24'd0;
		error <= 1'd0;
		byte_no <= 2'd0;
		dataIn <= 1'd0;
		Dout <= 1'd0;
		bitmask <= 24'd0;
		cnt <= 5'd0;
		bit_no0 <= 5'd0;
		bit_st <= 1'd0;
		bit_no1 <= 3'd0;
		ws2812b_state <= 2'd0;
		fsm_state <= 3'd0;
	end
end

OSCH #(
	.NOM_FREQ("15.65")
) OSCH (
	.STDBY(1'd0),
	.OSC(osch_clk)
);

endmodule
