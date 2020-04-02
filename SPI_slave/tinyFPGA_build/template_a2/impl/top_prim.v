// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Thu Apr 02 14:20:30 2020
//
// Verilog Description of module top
//

module top (user_sclk, user_mosi, user_cs, user_led0, Dout) /* synthesis syn_module_defined=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(2[8:11])
    input user_sclk;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(3[8:17])
    input user_mosi;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(4[8:17])
    input user_cs;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(5[8:15])
    output user_led0;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(6[9:18])
    output Dout;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(7[13:17])
    
    wire osch_clk /* synthesis is_clock=1, SET_AS_NETWORK=osch_clk */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(10[6:14])
    
    wire GND_net, VCC_net, user_sclk_c, user_mosi_c, user_cs_c, Dout_c;
    wire [23:0]led_data;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(12[12:20])
    wire [1:0]byte_no;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(14[11:18])
    wire [23:0]bitmask;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(17[12:19])
    wire [4:0]cnt;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(18[11:14])
    wire [4:0]bit_no0;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(19[11:18])
    wire [2:0]bit_no1;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(21[11:18])
    wire [1:0]ws2812b_state;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(22[11:24])
    wire [1:0]ws2812b_next_state;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(23[11:29])
    
    wire DOUT_obj_next_value0, DOUT_obj_next_value_ce0, n1648, n1, bit_no0_next_value_ce4;
    wire [2:0]fsm_state;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(36[11:20])
    wire [2:0]fsm_next_state;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(37[11:25])
    
    wire n2202, led_data_f_next_value_ce1, n10, bit_no1_f_next_value_ce2, 
        byte_no_f_next_value_ce3;
    wire [23:0]ws2812b_next_state_1__N_171;
    
    wire ws2812b_next_state_1__N_170, n1955;
    wire [4:0]bit_no0_next_value4_4__N_195;
    
    wire n15, n2201, n1517;
    wire [23:0]bitmask_next_value1_23__N_96;
    
    wire osch_clk_enable_8, n211, n212, byte_no_f_next_value_ce3_N_352, 
        n217, n10_adj_1, n2108, n1_adj_2, n1511, n2114, n2200, 
        n392, n393, n394, n1802, n54, n2172, n2196, n1953, dataIn_N_328, 
        n1982, n6, n2118, n2195, osch_clk_enable_28, n2206, n2205, 
        n1957, n2199, n2204, n1956, n2111, osch_clk_enable_9, osch_clk_enable_1, 
        n2193, n2210, n1476, n1550, n2209, n1776, n2203, n1954, 
        n2192, n1952, n2127, n2207, n2198, osch_clk_enable_3, n1523;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1_4_lut (.A(user_sclk_c), .B(fsm_state[1]), .C(user_cs_c), .D(fsm_state[0]), 
         .Z(n2118)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(162[2] 241[9])
    defparam i1_4_lut.init = 16'h0004;
    FD1P3AX fsm_state_i2 (.D(fsm_next_state[2]), .SP(osch_clk_enable_1), 
            .CK(osch_clk), .Q(fsm_state[2])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam fsm_state_i2.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n2205), .B(cnt[3]), .C(ws2812b_state[1]), .D(n2111), 
         .Z(n1982)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i3_4_lut.init = 16'h2000;
    FD1P3IX bit_no0_i0_i4 (.D(bit_no0_next_value4_4__N_195[4]), .SP(bit_no0_next_value_ce4), 
            .CD(n2199), .CK(osch_clk), .Q(bit_no0[4])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bit_no0_i0_i4.GSR = "ENABLED";
    FD1P3IX led_data_i0_i15 (.D(led_data[16]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[15])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i15.GSR = "ENABLED";
    FD1S3IX cnt_i0 (.D(n2202), .CK(osch_clk), .CD(n1511), .Q(cnt[0])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam cnt_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(byte_no[1]), .B(byte_no[0]), .C(n2114), 
         .D(fsm_state[0]), .Z(n1517)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf080;
    FD1P3IX bitmask_i0_i0 (.D(bitmask[1]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[0])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i0.GSR = "ENABLED";
    LUT4 i1531_2_lut_3_lut (.A(bit_no1[1]), .B(bit_no1[0]), .C(bit_no1[2]), 
         .Z(byte_no_f_next_value_ce3_N_352)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(185[31:47])
    defparam i1531_2_lut_3_lut.init = 16'h7f7f;
    FD1P3IX byte_no_i0_i0 (.D(n1), .SP(byte_no_f_next_value_ce3), .CD(n1517), 
            .CK(osch_clk), .Q(byte_no[0])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam byte_no_i0_i0.GSR = "ENABLED";
    FD1P3IX led_data_i0_i22 (.D(led_data[23]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[22])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i22.GSR = "ENABLED";
    FD1S3AX ws2812b_state_i0 (.D(n1476), .CK(osch_clk), .Q(ws2812b_state[0])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam ws2812b_state_i0.GSR = "ENABLED";
    FD1P3AX fsm_state_i0 (.D(fsm_next_state[0]), .SP(osch_clk_enable_3), 
            .CK(osch_clk), .Q(fsm_state[0])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam fsm_state_i0.GSR = "ENABLED";
    FD1S3AX dataIn_138 (.D(dataIn_N_328), .CK(osch_clk), .Q(bitmask_next_value1_23__N_96[23])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam dataIn_138.GSR = "ENABLED";
    FD1P3IX led_data_i0_i14 (.D(led_data[15]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[14])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i14.GSR = "ENABLED";
    OSCH OSCH (.STDBY(GND_net), .OSC(osch_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH.NOM_FREQ = "15.65";
    FD1P3IX bit_no1_i0_i2 (.D(n211), .SP(bit_no1_f_next_value_ce2), .CD(n1517), 
            .CK(osch_clk), .Q(bit_no1[2])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bit_no1_i0_i2.GSR = "ENABLED";
    FD1P3IX bit_no0_i0_i0 (.D(bit_no0_next_value4_4__N_195[0]), .SP(bit_no0_next_value_ce4), 
            .CD(n2199), .CK(osch_clk), .Q(bit_no0[0])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bit_no0_i0_i0.GSR = "ENABLED";
    LUT4 i332_2_lut_3_lut (.A(bit_no1[1]), .B(bit_no1[0]), .C(bit_no1[2]), 
         .Z(n211)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(185[31:47])
    defparam i332_2_lut_3_lut.init = 16'h7878;
    LUT4 i289_2_lut (.A(bit_no0[1]), .B(bit_no0[0]), .Z(bit_no0_next_value4_4__N_195[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(105[28:44])
    defparam i289_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_4_lut_4_lut (.A(ws2812b_state[0]), .B(ws2812b_state[1]), 
         .C(Dout_c), .D(n2193), .Z(DOUT_obj_next_value_ce0)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hbb9b;
    CCU2D ws2812b_next_state_1__I_1_19 (.A0(bitmask[13]), .B0(ws2812b_next_state_1__N_171[13]), 
          .C0(bitmask[12]), .D0(ws2812b_next_state_1__N_171[12]), .A1(bitmask[11]), 
          .B1(ws2812b_next_state_1__N_171[11]), .C1(bitmask[10]), .D1(ws2812b_next_state_1__N_171[10]), 
          .CIN(n1954), .COUT(n1955));
    defparam ws2812b_next_state_1__I_1_19.INIT0 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_19.INIT1 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_19.INJECT1_0 = "YES";
    defparam ws2812b_next_state_1__I_1_19.INJECT1_1 = "YES";
    LUT4 i1_2_lut_rep_29 (.A(cnt[4]), .B(cnt[1]), .Z(n2205)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_29.init = 16'h8888;
    LUT4 i1_2_lut_rep_22_3_lut (.A(cnt[4]), .B(cnt[1]), .C(cnt[3]), .Z(n2198)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_22_3_lut.init = 16'hf7f7;
    CCU2D ws2812b_next_state_1__I_1_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bitmask[23]), .B1(ws2812b_next_state_1__N_171[23]), 
          .C1(bitmask[22]), .D1(ws2812b_next_state_1__N_171[22]), .COUT(n1952));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[8:38])
    defparam ws2812b_next_state_1__I_1_0.INIT0 = 16'hF000;
    defparam ws2812b_next_state_1__I_1_0.INIT1 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_0.INJECT1_0 = "NO";
    defparam ws2812b_next_state_1__I_1_0.INJECT1_1 = "YES";
    OB user_led0_pad (.I(Dout_c), .O(user_led0));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(6[9:18])
    LUT4 i1_2_lut_3_lut_4_lut_adj_1 (.A(ws2812b_state[0]), .B(n2201), .C(n2111), 
         .D(n2198), .Z(n1511)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_2_lut_3_lut_4_lut_adj_1.init = 16'h44f4;
    LUT4 i1_3_lut_4_lut (.A(n2198), .B(n2111), .C(ws2812b_state[0]), .D(ws2812b_state[1]), 
         .Z(bit_no0_next_value_ce4)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_3_lut_4_lut.init = 16'hf400;
    FD1P3IX bit_no1_i0_i1 (.D(n212), .SP(bit_no1_f_next_value_ce2), .CD(n1517), 
            .CK(osch_clk), .Q(bit_no1[1])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bit_no1_i0_i1.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i7 (.D(bitmask[8]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[7])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_2 (.A(fsm_state[1]), .B(byte_no_f_next_value_ce3_N_352), 
         .C(user_cs_c), .D(fsm_state[0]), .Z(n10_adj_1)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_4_lut_adj_2.init = 16'ha0a2;
    FD1P3IX bitmask_i0_i5 (.D(bitmask[6]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[5])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i5.GSR = "ENABLED";
    FD1S3IX cnt_i1 (.D(n1648), .CK(osch_clk), .CD(n1511), .Q(cnt[1])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam cnt_i1.GSR = "ENABLED";
    OB Dout_pad (.I(Dout_c), .O(Dout));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(7[13:17])
    IB user_sclk_pad (.I(user_sclk), .O(user_sclk_c));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(3[8:17])
    IB user_mosi_pad (.I(user_mosi), .O(user_mosi_c));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(4[8:17])
    IB user_cs_pad (.I(user_cs), .O(user_cs_c));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(5[8:15])
    FD1P3IX bit_no0_i0_i2 (.D(bit_no0_next_value4_4__N_195[2]), .SP(bit_no0_next_value_ce4), 
            .CD(n2199), .CK(osch_clk), .Q(bit_no0[2])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bit_no0_i0_i2.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i4 (.D(bitmask[5]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[4])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i4.GSR = "ENABLED";
    FD1P3IX bit_no1_i0_i0 (.D(n1_adj_2), .SP(bit_no1_f_next_value_ce2), 
            .CD(n1517), .CK(osch_clk), .Q(bit_no1[0])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bit_no1_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_19_3_lut (.A(ws2812b_state[1]), .B(bitmask_next_value1_23__N_96[23]), 
         .C(ws2812b_state[0]), .Z(n2195)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_2_lut_rep_19_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_4_lut_rep_21 (.A(n2203), .B(user_cs_c), .C(fsm_state[1]), 
         .D(user_sclk_c), .Z(osch_clk_enable_3)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_2_lut_4_lut_rep_21.init = 16'hefff;
    LUT4 i925_3_lut (.A(led_data_f_next_value_ce1), .B(fsm_state[2]), .C(n2118), 
         .Z(n1523)) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i925_3_lut.init = 16'h8a8a;
    LUT4 i1_4_lut_adj_3 (.A(n2114), .B(n54), .C(fsm_state[0]), .D(n2204), 
         .Z(dataIn_N_328)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(36[11:20])
    defparam i1_4_lut_adj_3.init = 16'hcecc;
    LUT4 i1_4_lut_4_lut (.A(n2203), .B(user_cs_c), .C(fsm_state[1]), .D(user_sclk_c), 
         .Z(osch_clk_enable_9)) /* synthesis lut_function=(A+(B (C)+!B !(C (D)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_4_lut_4_lut.init = 16'hebfb;
    LUT4 i310_3_lut_4_lut (.A(bit_no0[2]), .B(n2200), .C(bit_no0[3]), 
         .D(bit_no0[4]), .Z(bit_no0_next_value4_4__N_195[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(105[28:44])
    defparam i310_3_lut_4_lut.init = 16'h7f80;
    LUT4 i889_2_lut_4_lut_4_lut (.A(ws2812b_state[0]), .B(n2201), .C(n2192), 
         .D(n1982), .Z(n1476)) /* synthesis lut_function=(!(A (C+(D))+!A !(B+(D)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i889_2_lut_4_lut_4_lut.init = 16'h554e;
    FD1P3IX bitmask_i0_i3 (.D(bitmask[4]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[3])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i3.GSR = "ENABLED";
    FD1P3IX led_data_i0_i0 (.D(led_data[1]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[0])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_4 (.A(ws2812b_state[0]), .B(bitmask_next_value1_23__N_96[23]), 
         .C(n10), .D(ws2812b_state[1]), .Z(n54)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(22[11:24])
    defparam i1_4_lut_adj_4.init = 16'hc8cc;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i1_2_lut (.A(cnt[0]), .B(cnt[2]), .Z(n2111)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_2_lut.init = 16'h2222;
    FD1P3IX led_data_i0_i21 (.D(led_data[22]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[21])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i21.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_5 (.A(fsm_state[2]), .B(user_sclk_c), .C(n6), .D(n2196), 
         .Z(bit_no1_f_next_value_ce2)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(D))) */ ;
    defparam i1_4_lut_adj_5.init = 16'ha0b3;
    LUT4 i1_4_lut_adj_6 (.A(fsm_state[2]), .B(fsm_state[0]), .C(n10_adj_1), 
         .D(user_cs_c), .Z(fsm_next_state[2])) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_4_lut_adj_6.init = 16'h5450;
    LUT4 i400_1_lut_rep_26 (.A(cnt[0]), .Z(n2202)) /* synthesis lut_function=(!(A)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(256[6:20])
    defparam i400_1_lut_rep_26.init = 16'h5555;
    LUT4 i394_1_lut (.A(bit_no0[0]), .Z(bit_no0_next_value4_4__N_195[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(107[9:27])
    defparam i394_1_lut.init = 16'h5555;
    LUT4 and_4_i14_2_lut (.A(led_data[13]), .B(bitmask[13]), .Z(ws2812b_next_state_1__N_171[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i14_2_lut.init = 16'h8888;
    LUT4 i16_4_lut_then_4_lut (.A(user_sclk_c), .B(fsm_state[2]), .C(fsm_state[0]), 
         .D(user_cs_c), .Z(n2210)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i16_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i4_4_lut_4_lut (.A(cnt[0]), .B(n2198), .C(n1776), .D(cnt[2]), 
         .Z(n10)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(256[6:20])
    defparam i4_4_lut_4_lut.init = 16'hfffd;
    LUT4 i16_4_lut_else_4_lut (.A(bitmask_next_value1_23__N_96[23]), .B(fsm_state[2]), 
         .C(fsm_state[0]), .Z(n2209)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i16_4_lut_else_4_lut.init = 16'h4040;
    FD1S3IX cnt_i2 (.D(n394), .CK(osch_clk), .CD(n1511), .Q(cnt[2])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam cnt_i2.GSR = "ENABLED";
    FD1S3IX cnt_i3 (.D(n393), .CK(osch_clk), .CD(n1511), .Q(cnt[3])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam cnt_i3.GSR = "ENABLED";
    FD1S3IX cnt_i4 (.D(n392), .CK(osch_clk), .CD(n1511), .Q(cnt[4])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam cnt_i4.GSR = "ENABLED";
    FD1P3AX ws2812b_state_i1 (.D(ws2812b_next_state[1]), .SP(osch_clk_enable_8), 
            .CK(osch_clk), .Q(ws2812b_state[1])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam ws2812b_state_i1.GSR = "ENABLED";
    LUT4 and_4_i18_2_lut (.A(led_data[17]), .B(bitmask[17]), .Z(ws2812b_next_state_1__N_171[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i18_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_27 (.A(fsm_state[2]), .B(fsm_state[0]), .Z(n2203)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_27.init = 16'heeee;
    LUT4 and_4_i17_2_lut (.A(led_data[16]), .B(bitmask[16]), .Z(ws2812b_next_state_1__N_171[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i17_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(n2198), .B(n2111), .C(ws2812b_state[1]), .D(n1776), 
         .Z(n1802)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 and_4_i16_2_lut (.A(led_data[15]), .B(bitmask[15]), .Z(ws2812b_next_state_1__N_171[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i16_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_20_4_lut (.A(fsm_state[2]), .B(fsm_state[0]), .C(fsm_state[1]), 
         .D(user_cs_c), .Z(n2196)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_20_4_lut.init = 16'hffef;
    LUT4 and_4_i15_2_lut (.A(led_data[14]), .B(bitmask[14]), .Z(ws2812b_next_state_1__N_171[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i15_2_lut.init = 16'h8888;
    LUT4 and_4_i13_2_lut (.A(led_data[12]), .B(bitmask[12]), .Z(ws2812b_next_state_1__N_171[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i13_2_lut.init = 16'h8888;
    LUT4 and_4_i12_2_lut (.A(led_data[11]), .B(bitmask[11]), .Z(ws2812b_next_state_1__N_171[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i12_2_lut.init = 16'h8888;
    LUT4 and_4_i11_2_lut (.A(led_data[10]), .B(bitmask[10]), .Z(ws2812b_next_state_1__N_171[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i11_2_lut.init = 16'h8888;
    LUT4 and_4_i24_2_lut (.A(led_data[23]), .B(bitmask[23]), .Z(ws2812b_next_state_1__N_171[23])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i24_2_lut.init = 16'h8888;
    LUT4 and_4_i20_2_lut (.A(led_data[19]), .B(bitmask[19]), .Z(ws2812b_next_state_1__N_171[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i20_2_lut.init = 16'h8888;
    FD1P3IX led_data_i0_i13 (.D(led_data[14]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[13])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i13.GSR = "ENABLED";
    LUT4 i399_1_lut (.A(byte_no[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(209[8:25])
    defparam i399_1_lut.init = 16'h5555;
    LUT4 and_4_i10_2_lut (.A(led_data[9]), .B(bitmask[9]), .Z(ws2812b_next_state_1__N_171[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i10_2_lut.init = 16'h8888;
    FD1P3AX fsm_state_i1 (.D(fsm_next_state[1]), .SP(osch_clk_enable_9), 
            .CK(osch_clk), .Q(fsm_state[1])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam fsm_state_i1.GSR = "ENABLED";
    FD1P3AX bitmask_i0_i23 (.D(n2195), .SP(osch_clk_enable_28), .CK(osch_clk), 
            .Q(bitmask[23])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i23.GSR = "ENABLED";
    LUT4 and_4_i23_2_lut (.A(led_data[22]), .B(bitmask[22]), .Z(ws2812b_next_state_1__N_171[22])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i23_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_16_3_lut (.A(cnt[4]), .B(n2172), .C(ws2812b_state[1]), 
         .Z(n2192)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(22[11:24])
    defparam i1_2_lut_rep_16_3_lut.init = 16'hfefe;
    LUT4 ws2812b_next_state_1__N_170_bdd_4_lut (.A(ws2812b_next_state_1__N_170), 
         .B(cnt[3]), .C(cnt[1]), .D(cnt[2]), .Z(n2172)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+(C (D)))) */ ;
    defparam ws2812b_next_state_1__N_170_bdd_4_lut.init = 16'hdcc4;
    LUT4 i1_2_lut_rep_23 (.A(ws2812b_state[0]), .B(ws2812b_state[1]), .Z(n2199)) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_2_lut_rep_23.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_7 (.A(ws2812b_state[1]), .B(n2193), .C(Dout_c), 
         .D(ws2812b_state[0]), .Z(DOUT_obj_next_value0)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(22[11:24])
    defparam i2_3_lut_4_lut_adj_7.init = 16'h0100;
    FD1P3IX led_data_i0_i20 (.D(led_data[21]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[20])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i20.GSR = "ENABLED";
    LUT4 and_4_i9_2_lut (.A(led_data[8]), .B(bitmask[8]), .Z(ws2812b_next_state_1__N_171[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i9_2_lut.init = 16'h8888;
    LUT4 and_4_i8_2_lut (.A(led_data[7]), .B(bitmask[7]), .Z(ws2812b_next_state_1__N_171[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i8_2_lut.init = 16'h8888;
    LUT4 and_4_i7_2_lut (.A(led_data[6]), .B(bitmask[6]), .Z(ws2812b_next_state_1__N_171[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i7_2_lut.init = 16'h8888;
    CCU2D ws2812b_next_state_1__I_1_24 (.A0(bitmask[1]), .B0(ws2812b_next_state_1__N_171[1]), 
          .C0(bitmask[0]), .D0(ws2812b_next_state_1__N_171[0]), .A1(GND_net), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1957), .S1(ws2812b_next_state_1__N_170));
    defparam ws2812b_next_state_1__I_1_24.INIT0 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_24.INIT1 = 16'hFFFF;
    defparam ws2812b_next_state_1__I_1_24.INJECT1_0 = "YES";
    defparam ws2812b_next_state_1__I_1_24.INJECT1_1 = "NO";
    FD1P3IX bitmask_i0_i2 (.D(bitmask[3]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[2])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i2.GSR = "ENABLED";
    LUT4 i325_2_lut (.A(bit_no1[1]), .B(bit_no1[0]), .Z(n212)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(185[31:47])
    defparam i325_2_lut.init = 16'h6666;
    LUT4 i1526_3_lut_4_lut (.A(fsm_state[1]), .B(user_cs_c), .C(fsm_state[2]), 
         .D(osch_clk_enable_9), .Z(osch_clk_enable_1)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(162[2] 241[9])
    defparam i1526_3_lut_4_lut.init = 16'h7f00;
    LUT4 i1536_else_4_lut (.A(user_cs_c), .B(fsm_state[1]), .C(fsm_state[2]), 
         .D(byte_no_f_next_value_ce3_N_352), .Z(n2206)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C+(D))+!B !(C)))) */ ;
    defparam i1536_else_4_lut.init = 16'h4d49;
    FD1P3IX led_data_i0_i19 (.D(led_data[20]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[19])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i19.GSR = "ENABLED";
    FD1P3IX led_data_i0_i5 (.D(led_data[6]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[5])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i5.GSR = "ENABLED";
    LUT4 i16_2_lut (.A(cnt[0]), .B(cnt[1]), .Z(n1648)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(18[11:14])
    defparam i16_2_lut.init = 16'h6666;
    LUT4 i28_4_lut_4_lut (.A(fsm_state[1]), .B(user_cs_c), .C(n15), .D(fsm_state[2]), 
         .Z(fsm_next_state[1])) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(162[2] 241[9])
    defparam i28_4_lut_4_lut.init = 16'h8830;
    CCU2D ws2812b_next_state_1__I_1_23 (.A0(bitmask[5]), .B0(ws2812b_next_state_1__N_171[5]), 
          .C0(bitmask[4]), .D0(ws2812b_next_state_1__N_171[4]), .A1(bitmask[3]), 
          .B1(ws2812b_next_state_1__N_171[3]), .C1(bitmask[2]), .D1(ws2812b_next_state_1__N_171[2]), 
          .CIN(n1956), .COUT(n1957));
    defparam ws2812b_next_state_1__I_1_23.INIT0 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_23.INIT1 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_23.INJECT1_0 = "YES";
    defparam ws2812b_next_state_1__I_1_23.INJECT1_1 = "YES";
    FD1P3IX led_data_i0_i4 (.D(led_data[5]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[4])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_17 (.A(cnt[4]), .B(n2172), .Z(n2193)) /* synthesis lut_function=(A+(B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(22[11:24])
    defparam i1_2_lut_rep_17.init = 16'heeee;
    LUT4 i40_2_lut (.A(byte_no[1]), .B(byte_no[0]), .Z(n217)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(14[11:18])
    defparam i40_2_lut.init = 16'h6666;
    LUT4 i13_2_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n394)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i13_2_lut_3_lut.init = 16'h7878;
    LUT4 i397_1_lut (.A(bit_no1[0]), .Z(n1_adj_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(187[10:27])
    defparam i397_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_8 (.A(cnt[2]), .B(cnt[1]), .Z(n2108)) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(18[11:14])
    defparam i1_2_lut_adj_8.init = 16'h8888;
    LUT4 i1536_then_4_lut (.A(user_sclk_c), .B(user_cs_c), .C(fsm_state[1]), 
         .D(fsm_state[2]), .Z(n2207)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C+!(D))) */ ;
    defparam i1536_then_4_lut.init = 16'hf0dd;
    LUT4 i1_2_lut_rep_28 (.A(byte_no[1]), .B(byte_no[0]), .Z(n2204)) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_2_lut_rep_28.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(byte_no[1]), .B(byte_no[0]), .C(fsm_state[1]), 
         .D(fsm_state[0]), .Z(n6)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'h0f08;
    LUT4 i1_2_lut_adj_10 (.A(fsm_state[2]), .B(fsm_state[1]), .Z(n2114)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_2_lut_adj_10.init = 16'h2222;
    LUT4 i1089_4_lut (.A(cnt[4]), .B(cnt[0]), .C(cnt[3]), .D(n2108), 
         .Z(n392)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;
    defparam i1089_4_lut.init = 16'h6aaa;
    LUT4 ws2812b_state_1__I_0_146_Mux_1_i3_3_lut (.A(ws2812b_state[0]), .B(n1776), 
         .C(ws2812b_state[1]), .Z(ws2812b_next_state[1])) /* synthesis lut_function=(!(A (C)+!A (B+!(C)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(81[2] 138[9])
    defparam ws2812b_state_1__I_0_146_Mux_1_i3_3_lut.init = 16'h1a1a;
    LUT4 i6_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[3]), .D(cnt[2]), 
         .Z(n393)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i6_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_4_lut_adj_11 (.A(user_sclk_c), .B(fsm_state[1]), .C(fsm_state[0]), 
         .D(byte_no_f_next_value_ce3_N_352), .Z(n15)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C+(D)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(162[2] 241[9])
    defparam i1_4_lut_adj_11.init = 16'hece0;
    FD1P3IX led_data_i0_i3 (.D(led_data[4]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[3])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i3.GSR = "ENABLED";
    FD1P3IX led_data_i0_i12 (.D(led_data[13]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[12])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i12.GSR = "ENABLED";
    FD1P3IX led_data_i0_i2 (.D(led_data[3]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[2])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i2.GSR = "ENABLED";
    LUT4 i291_2_lut_rep_24 (.A(bit_no0[1]), .B(bit_no0[0]), .Z(n2200)) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(105[28:44])
    defparam i291_2_lut_rep_24.init = 16'h8888;
    LUT4 i296_2_lut_3_lut (.A(bit_no0[1]), .B(bit_no0[0]), .C(bit_no0[2]), 
         .Z(bit_no0_next_value4_4__N_195[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(105[28:44])
    defparam i296_2_lut_3_lut.init = 16'h7878;
    LUT4 and_4_i2_2_lut (.A(led_data[1]), .B(bitmask[1]), .Z(ws2812b_next_state_1__N_171[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i2_2_lut.init = 16'h8888;
    FD1P3IX led_data_i0_i18 (.D(led_data[19]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[18])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i18.GSR = "ENABLED";
    LUT4 i303_2_lut_3_lut_4_lut (.A(bit_no0[1]), .B(bit_no0[0]), .C(bit_no0[3]), 
         .D(bit_no0[2]), .Z(bit_no0_next_value4_4__N_195[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(105[28:44])
    defparam i303_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3IX led_data_i0_i17 (.D(led_data[18]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[17])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i17.GSR = "ENABLED";
    LUT4 and_4_i19_2_lut (.A(led_data[18]), .B(bitmask[18]), .Z(ws2812b_next_state_1__N_171[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i19_2_lut.init = 16'h8888;
    FD1P3IX led_data_i0_i11 (.D(led_data[12]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[11])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i11.GSR = "ENABLED";
    LUT4 and_4_i1_2_lut (.A(led_data[0]), .B(bitmask[0]), .Z(ws2812b_next_state_1__N_171[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i1_2_lut.init = 16'h8888;
    FD1P3IX led_data_i0_i1 (.D(led_data[2]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[1])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_25 (.A(ws2812b_state[1]), .B(bitmask_next_value1_23__N_96[23]), 
         .Z(n2201)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_2_lut_rep_25.init = 16'h4444;
    LUT4 i2_4_lut (.A(bit_no0[1]), .B(bit_no0[0]), .C(n2127), .D(bit_no0[3]), 
         .Z(n1776)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_4_lut.init = 16'hff7f;
    LUT4 i1_3_lut_rep_18_4_lut (.A(ws2812b_state[1]), .B(bitmask_next_value1_23__N_96[23]), 
         .C(n1802), .D(ws2812b_state[0]), .Z(osch_clk_enable_28)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_3_lut_rep_18_4_lut.init = 16'h00f4;
    LUT4 i1505_2_lut (.A(bit_no0[4]), .B(bit_no0[2]), .Z(n2127)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1505_2_lut.init = 16'h8888;
    CCU2D ws2812b_next_state_1__I_1_15 (.A0(bitmask[21]), .B0(ws2812b_next_state_1__N_171[21]), 
          .C0(bitmask[20]), .D0(ws2812b_next_state_1__N_171[20]), .A1(bitmask[19]), 
          .B1(ws2812b_next_state_1__N_171[19]), .C1(bitmask[18]), .D1(ws2812b_next_state_1__N_171[18]), 
          .CIN(n1952), .COUT(n1953));
    defparam ws2812b_next_state_1__I_1_15.INIT0 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_15.INIT1 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_15.INJECT1_0 = "YES";
    defparam ws2812b_next_state_1__I_1_15.INJECT1_1 = "YES";
    LUT4 and_4_i21_2_lut (.A(led_data[20]), .B(bitmask[20]), .Z(ws2812b_next_state_1__N_171[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i21_2_lut.init = 16'h8888;
    LUT4 and_4_i6_2_lut (.A(led_data[5]), .B(bitmask[5]), .Z(ws2812b_next_state_1__N_171[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i6_2_lut.init = 16'h8888;
    LUT4 i951_3_lut_3_lut_4_lut (.A(ws2812b_state[1]), .B(bitmask_next_value1_23__N_96[23]), 
         .C(n1802), .D(ws2812b_state[0]), .Z(n1550)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i951_3_lut_3_lut_4_lut.init = 16'h0004;
    FD1P3AX Dout_134 (.D(DOUT_obj_next_value0), .SP(DOUT_obj_next_value_ce0), 
            .CK(osch_clk), .Q(Dout_c));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam Dout_134.GSR = "ENABLED";
    LUT4 and_4_i5_2_lut (.A(led_data[4]), .B(bitmask[4]), .Z(ws2812b_next_state_1__N_171[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i5_2_lut.init = 16'h8888;
    FD1P3IX led_data_i0_i10 (.D(led_data[11]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[10])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i10.GSR = "ENABLED";
    FD1P3IX led_data_i0_i23 (.D(user_mosi_c), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[23])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i23.GSR = "ENABLED";
    FD1P3IX led_data_i0_i9 (.D(led_data[10]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[9])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i9.GSR = "ENABLED";
    FD1P3IX led_data_i0_i16 (.D(led_data[17]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[16])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i16.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1P3IX led_data_i0_i8 (.D(led_data[9]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[8])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i8.GSR = "ENABLED";
    FD1P3IX led_data_i0_i7 (.D(led_data[8]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[7])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i7.GSR = "ENABLED";
    LUT4 and_4_i4_2_lut (.A(led_data[3]), .B(bitmask[3]), .Z(ws2812b_next_state_1__N_171[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i4_2_lut.init = 16'h8888;
    LUT4 and_4_i3_2_lut (.A(led_data[2]), .B(bitmask[2]), .Z(ws2812b_next_state_1__N_171[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i3_2_lut.init = 16'h8888;
    LUT4 and_4_i22_2_lut (.A(led_data[21]), .B(bitmask[21]), .Z(ws2812b_next_state_1__N_171[21])) /* synthesis lut_function=(A (B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(89[9:26])
    defparam and_4_i22_2_lut.init = 16'h8888;
    FD1P3IX bitmask_i0_i22 (.D(bitmask[23]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[22])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i22.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i21 (.D(bitmask[22]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[21])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i21.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i6 (.D(bitmask[7]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[6])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i6.GSR = "ENABLED";
    LUT4 fsm_state_2__I_0_176_i7_4_lut (.A(byte_no_f_next_value_ce3_N_352), 
         .B(n6), .C(fsm_state[2]), .D(n2118), .Z(byte_no_f_next_value_ce3)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(162[2] 241[9])
    defparam fsm_state_2__I_0_176_i7_4_lut.init = 16'hc5c0;
    FD1P3IX bitmask_i0_i20 (.D(bitmask[21]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[20])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i20.GSR = "ENABLED";
    FD1P3IX bit_no0_i0_i1 (.D(bit_no0_next_value4_4__N_195[1]), .SP(bit_no0_next_value_ce4), 
            .CD(n2199), .CK(osch_clk), .Q(bit_no0[1])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bit_no0_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_rep_15_4_lut (.A(ws2812b_state[0]), .B(n2201), .C(n2192), 
         .D(n1982), .Z(osch_clk_enable_8)) /* synthesis lut_function=(A (C+(D))+!A (B+(D))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam i1_4_lut_rep_15_4_lut.init = 16'hffe4;
    FD1P3IX bitmask_i0_i19 (.D(bitmask[20]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[19])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i19.GSR = "ENABLED";
    FD1P3IX led_data_i0_i6 (.D(led_data[7]), .SP(led_data_f_next_value_ce1), 
            .CD(n1523), .CK(osch_clk), .Q(led_data[6])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam led_data_i0_i6.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i18 (.D(bitmask[19]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[18])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i18.GSR = "ENABLED";
    PFUMX i1540 (.BLUT(n2209), .ALUT(n2210), .C0(fsm_state[1]), .Z(led_data_f_next_value_ce1));
    FD1P3IX bitmask_i0_i17 (.D(bitmask[18]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[17])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i17.GSR = "ENABLED";
    CCU2D ws2812b_next_state_1__I_1_17 (.A0(bitmask[17]), .B0(ws2812b_next_state_1__N_171[17]), 
          .C0(bitmask[16]), .D0(ws2812b_next_state_1__N_171[16]), .A1(bitmask[15]), 
          .B1(ws2812b_next_state_1__N_171[15]), .C1(bitmask[14]), .D1(ws2812b_next_state_1__N_171[14]), 
          .CIN(n1953), .COUT(n1954));
    defparam ws2812b_next_state_1__I_1_17.INIT0 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_17.INIT1 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_17.INJECT1_0 = "YES";
    defparam ws2812b_next_state_1__I_1_17.INJECT1_1 = "YES";
    FD1P3IX bitmask_i0_i16 (.D(bitmask[17]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[16])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i16.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i15 (.D(bitmask[16]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[15])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i15.GSR = "ENABLED";
    CCU2D ws2812b_next_state_1__I_1_21 (.A0(bitmask[9]), .B0(ws2812b_next_state_1__N_171[9]), 
          .C0(bitmask[8]), .D0(ws2812b_next_state_1__N_171[8]), .A1(bitmask[7]), 
          .B1(ws2812b_next_state_1__N_171[7]), .C1(bitmask[6]), .D1(ws2812b_next_state_1__N_171[6]), 
          .CIN(n1955), .COUT(n1956));
    defparam ws2812b_next_state_1__I_1_21.INIT0 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_21.INIT1 = 16'h9009;
    defparam ws2812b_next_state_1__I_1_21.INJECT1_0 = "YES";
    defparam ws2812b_next_state_1__I_1_21.INJECT1_1 = "YES";
    FD1P3IX bitmask_i0_i14 (.D(bitmask[15]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[14])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i14.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i13 (.D(bitmask[14]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[13])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i13.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i12 (.D(bitmask[13]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[12])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i12.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i11 (.D(bitmask[12]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[11])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i11.GSR = "ENABLED";
    FD1P3IX bit_no0_i0_i3 (.D(bit_no0_next_value4_4__N_195[3]), .SP(bit_no0_next_value_ce4), 
            .CD(n2199), .CK(osch_clk), .Q(bit_no0[3])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bit_no0_i0_i3.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i10 (.D(bitmask[11]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[10])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i10.GSR = "ENABLED";
    FD1P3IX bitmask_i0_i9 (.D(bitmask[10]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[9])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i9.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3IX bitmask_i0_i8 (.D(bitmask[9]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[8])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i8.GSR = "ENABLED";
    PFUMX i1538 (.BLUT(n2206), .ALUT(n2207), .C0(fsm_state[0]), .Z(fsm_next_state[0]));
    VLO i1 (.Z(GND_net));
    FD1P3IX bitmask_i0_i1 (.D(bitmask[2]), .SP(osch_clk_enable_28), .CD(n1550), 
            .CK(osch_clk), .Q(bitmask[1])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam bitmask_i0_i1.GSR = "ENABLED";
    FD1P3IX byte_no_i0_i1 (.D(n217), .SP(byte_no_f_next_value_ce3), .CD(n1517), 
            .CK(osch_clk), .Q(byte_no[1])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(254[8] 312[4])
    defparam byte_no_i0_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

