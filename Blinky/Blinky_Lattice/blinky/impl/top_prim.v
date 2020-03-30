// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Wed Mar 25 17:21:27 2020
//
// Verilog Description of module top
//

module top (user_led0, Dout) /* synthesis syn_module_defined=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(2[8:11])
    output user_led0;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(3[13:22])
    output Dout;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(4[13:17])
    
    wire osch_clk /* synthesis SET_AS_NETWORK=osch_clk, is_clock=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(7[6:14])
    
    wire GND_net, VCC_net, Dout_c;
    wire [9:0]cnt;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(8[11:14])
    
    wire n6, n97, user_led0_N_22, n36, n38, n37, n39, n40, n41, 
        n42, n43, n44, n45, n125, n106, n105, n104, n103, 
        n6_adj_1, n102, n118;
    
    VHI i2 (.Z(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3AX user_led0_20 (.D(user_led0_N_22), .CK(osch_clk), .Q(Dout_c));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(27[8] 44[4])
    defparam user_led0_20.GSR = "ENABLED";
    CCU2D cnt_25_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n104), 
          .COUT(n105), .S0(n40), .S1(n39));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_25_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_25_add_4_7.INJECT1_0 = "NO";
    defparam cnt_25_add_4_7.INJECT1_1 = "NO";
    OSCH OSCH (.STDBY(GND_net), .OSC(osch_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH.NOM_FREQ = "15.65";
    OB user_led0_pad (.I(Dout_c), .O(user_led0));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(3[13:22])
    OB Dout_pad (.I(Dout_c), .O(Dout));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(4[13:17])
    CCU2D cnt_25_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n103), 
          .COUT(n104), .S0(n42), .S1(n41));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_25_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_25_add_4_5.INJECT1_0 = "NO";
    defparam cnt_25_add_4_5.INJECT1_1 = "NO";
    FD1S3IX cnt_25__i0 (.D(n45), .CK(osch_clk), .CD(n97), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25__i0.GSR = "ENABLED";
    LUT4 i79_4_lut (.A(cnt[2]), .B(n118), .C(cnt[3]), .D(n125), .Z(n97)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam i79_4_lut.init = 16'h0100;
    CCU2D cnt_25_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n102), 
          .COUT(n103), .S0(n44), .S1(n43));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_25_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_25_add_4_3.INJECT1_0 = "NO";
    defparam cnt_25_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_25_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n102), 
          .S1(n45));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25_add_4_1.INIT0 = 16'hF000;
    defparam cnt_25_add_4_1.INIT1 = 16'h0555;
    defparam cnt_25_add_4_1.INJECT1_0 = "NO";
    defparam cnt_25_add_4_1.INJECT1_1 = "NO";
    LUT4 i72_3_lut (.A(cnt[1]), .B(cnt[4]), .C(cnt[0]), .Z(n125)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i72_3_lut.init = 16'h8080;
    LUT4 i1_2_lut (.A(cnt[6]), .B(cnt[9]), .Z(n6_adj_1)) /* synthesis lut_function=(A+(B)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam i1_2_lut.init = 16'heeee;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i76_4_lut (.A(n118), .B(cnt[4]), .C(n6), .D(cnt[3]), .Z(user_led0_N_22)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(35[11] 38[5])
    defparam i76_4_lut.init = 16'h0111;
    VLO i1 (.Z(GND_net));
    FD1S3IX cnt_25__i9 (.D(n36), .CK(osch_clk), .CD(n97), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25__i9.GSR = "ENABLED";
    LUT4 i36_3_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i36_3_lut.init = 16'hecec;
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D cnt_25_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n106), 
          .S0(n36));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_25_add_4_11.INIT1 = 16'h0000;
    defparam cnt_25_add_4_11.INJECT1_0 = "NO";
    defparam cnt_25_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_25_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n105), 
          .COUT(n106), .S0(n38), .S1(n37));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_25_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_25_add_4_9.INJECT1_0 = "NO";
    defparam cnt_25_add_4_9.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(cnt[8]), .B(cnt[7]), .C(cnt[5]), .D(n6_adj_1), 
         .Z(n118)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam i4_4_lut.init = 16'hfffe;
    FD1S3IX cnt_25__i8 (.D(n37), .CK(osch_clk), .CD(n97), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25__i8.GSR = "ENABLED";
    FD1S3IX cnt_25__i7 (.D(n38), .CK(osch_clk), .CD(n97), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25__i7.GSR = "ENABLED";
    FD1S3IX cnt_25__i6 (.D(n39), .CK(osch_clk), .CD(n97), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25__i6.GSR = "ENABLED";
    FD1S3IX cnt_25__i5 (.D(n40), .CK(osch_clk), .CD(n97), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25__i5.GSR = "ENABLED";
    FD1S3IX cnt_25__i4 (.D(n41), .CK(osch_clk), .CD(n97), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25__i4.GSR = "ENABLED";
    FD1S3IX cnt_25__i3 (.D(n42), .CK(osch_clk), .CD(n97), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25__i3.GSR = "ENABLED";
    FD1S3IX cnt_25__i2 (.D(n43), .CK(osch_clk), .CD(n97), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25__i2.GSR = "ENABLED";
    FD1S3IX cnt_25__i1 (.D(n44), .CK(osch_clk), .CD(n97), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(28[9:21])
    defparam cnt_25__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

