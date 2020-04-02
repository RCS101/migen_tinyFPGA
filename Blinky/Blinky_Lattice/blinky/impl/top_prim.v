// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Wed Apr 01 10:27:49 2020
//
// Verilog Description of module top
//

module top (user_led0, user_sclk, user_mosi, user_cs) /* synthesis syn_module_defined=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(2[8:11])
    output user_led0;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(3[9:18])
    input user_sclk;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(4[8:17])
    input user_mosi;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(5[8:17])
    input user_cs;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(6[8:15])
    
    wire osch_clk /* synthesis SET_AS_NETWORK=osch_clk, is_clock=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(9[6:14])
    
    wire GND_net, VCC_net, user_sclk_c, user_cs_c;
    wire [2:0]bit_no;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(13[11:17])
    wire [2:0]state;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(14[11:16])
    wire [2:0]next_state;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(15[11:21])
    
    wire user_led0_N_41, n18, n380, n12, osch_clk_enable_5, n498, 
        n497, n19, n496, osch_clk_enable_2, n20, n13, n500, osch_clk_enable_3, 
        osch_clk_enable_6, n494, n499;
    
    VHI i2 (.Z(VCC_net));
    FD1P3IX bit_no_105__i1 (.D(n19), .SP(osch_clk_enable_6), .CD(GND_net), 
            .CK(osch_clk), .Q(bit_no[1]));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(63[28:43])
    defparam bit_no_105__i1.GSR = "ENABLED";
    OSCH OSCH (.STDBY(GND_net), .OSC(osch_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH.NOM_FREQ = "15.65";
    FD1P3AX state_i2 (.D(next_state[2]), .SP(osch_clk_enable_2), .CK(osch_clk), 
            .Q(state[2])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(94[8] 107[4])
    defparam state_i2.GSR = "ENABLED";
    IB user_sclk_pad (.I(user_sclk), .O(user_sclk_c));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(4[8:17])
    OB user_led0_pad (.I(n494), .O(user_led0));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(3[9:18])
    IB user_cs_pad (.I(user_cs), .O(user_cs_c));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(6[8:15])
    LUT4 n488_bdd_2_lut_then_4_lut (.A(user_cs_c), .B(n497), .C(n496), 
         .D(user_sclk_c), .Z(n500)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam n488_bdd_2_lut_then_4_lut.init = 16'h0504;
    LUT4 n488_bdd_2_lut_else_4_lut (.A(user_cs_c), .B(n497), .C(n496), 
         .Z(n499)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam n488_bdd_2_lut_else_4_lut.init = 16'h1515;
    GSR GSR_INST (.GSR(VCC_net));
    FD1P3AX state_i1 (.D(next_state[1]), .SP(osch_clk_enable_3), .CK(osch_clk), 
            .Q(state[1])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(94[8] 107[4])
    defparam state_i1.GSR = "ENABLED";
    FD1P3IX bit_no_105__i0 (.D(n20), .SP(osch_clk_enable_6), .CD(GND_net), 
            .CK(osch_clk), .Q(bit_no[0]));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(63[28:43])
    defparam bit_no_105__i0.GSR = "ENABLED";
    LUT4 i328_2_lut_rep_11_3_lut (.A(user_cs_c), .B(n497), .C(user_sclk_c), 
         .Z(osch_clk_enable_6)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i328_2_lut_rep_11_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_rep_12 (.A(state[2]), .B(state[0]), .C(state[1]), .Z(n496)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_rep_12.init = 16'h1414;
    LUT4 i31_4_lut_4_lut (.A(n494), .B(user_cs_c), .C(n12), .D(n496), 
         .Z(osch_clk_enable_2)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B !(C (D)))) */ ;
    defparam i31_4_lut_4_lut.init = 16'hcf11;
    LUT4 i334_3_lut (.A(n380), .B(user_cs_c), .C(n496), .Z(next_state[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i334_3_lut.init = 16'h1010;
    LUT4 mux_84_i2_4_lut (.A(user_led0_N_41), .B(n498), .C(n497), .D(state[0]), 
         .Z(n380)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(44[2] 81[9])
    defparam mux_84_i2_4_lut.init = 16'hcafa;
    LUT4 i249_1_lut (.A(bit_no[0]), .Z(n20)) /* synthesis lut_function=(!(A)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(63[28:43])
    defparam i249_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_rep_13 (.A(state[1]), .B(state[2]), .C(state[0]), .Z(n497)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(55[3:7])
    defparam i2_3_lut_rep_13.init = 16'hfdfd;
    FD1P3AX state_i0 (.D(next_state[0]), .SP(osch_clk_enable_5), .CK(osch_clk), 
            .Q(state[0])) /* synthesis lse_init_val=0 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(94[8] 107[4])
    defparam state_i0.GSR = "ENABLED";
    FD1P3IX bit_no_105__i2 (.D(n18), .SP(osch_clk_enable_6), .CD(GND_net), 
            .CK(osch_clk), .Q(bit_no[2]));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(63[28:43])
    defparam bit_no_105__i2.GSR = "ENABLED";
    LUT4 equal_76_i4_2_lut_rep_14 (.A(state[1]), .B(state[2]), .Z(n498)) /* synthesis lut_function=(A+(B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(44[2] 81[9])
    defparam equal_76_i4_2_lut_rep_14.init = 16'heeee;
    LUT4 i30_4_lut_4_lut (.A(n494), .B(user_cs_c), .C(n13), .D(n496), 
         .Z(osch_clk_enable_5)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B !(C (D)))) */ ;
    defparam i30_4_lut_4_lut.init = 16'hcf11;
    LUT4 i2_3_lut (.A(bit_no[1]), .B(bit_no[2]), .C(bit_no[0]), .Z(user_led0_N_41)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i258_3_lut (.A(bit_no[2]), .B(bit_no[1]), .C(bit_no[0]), .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(63[28:43])
    defparam i258_3_lut.init = 16'h6a6a;
    LUT4 i251_2_lut (.A(bit_no[1]), .B(bit_no[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(63[28:43])
    defparam i251_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_4_lut (.A(user_cs_c), .B(n496), .C(n497), .D(user_led0_N_41), 
         .Z(next_state[2])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0400;
    LUT4 i23_3_lut_4_lut (.A(state[0]), .B(n498), .C(user_sclk_c), .D(n497), 
         .Z(n12)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;
    defparam i23_3_lut_4_lut.init = 16'h02f2;
    LUT4 n12_bdd_4_lut (.A(n12), .B(n496), .C(user_cs_c), .D(n494), 
         .Z(osch_clk_enable_3)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A (B+!(C+(D)))) */ ;
    defparam n12_bdd_4_lut.init = 16'hc4c7;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i31_3_lut_4_lut (.A(state[0]), .B(n498), .C(user_sclk_c), .D(n497), 
         .Z(n13)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A ((D)+!C))) */ ;
    defparam i31_3_lut_4_lut.init = 16'h02f0;
    LUT4 i1_2_lut_rep_10_3_lut_4_lut (.A(user_cs_c), .B(n497), .C(user_led0_N_41), 
         .D(user_sclk_c), .Z(n494)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_10_3_lut_4_lut.init = 16'h0010;
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i339 (.BLUT(n499), .ALUT(n500), .C0(user_led0_N_41), .Z(next_state[0]));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

