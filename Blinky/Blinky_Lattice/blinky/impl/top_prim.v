// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Wed Mar 25 14:14:47 2020
//
// Verilog Description of module top
//

module top (user_led0, user_led1, user_led2) /* synthesis syn_module_defined=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(2[8:11])
    output user_led0;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(3[13:22])
    output user_led1;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(4[13:22])
    output user_led2;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(5[13:22])
    
    wire osch_clk /* synthesis SET_AS_NETWORK=osch_clk, is_clock=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(8[6:14])
    
    wire GND_net, VCC_net, user_led0_c_21, user_led1_c, user_led2_c;
    wire [23:0]counter;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(9[12:19])
    
    wire n24, n23, n22, n21, n20, n19, n18, n17, n16, n15, 
        n14, n13, n12, n11, n10, n9, n8, n7, n6, n5, n4, 
        n142, n143, n144, n145, n146, n147, n148, n149, n150, 
        n151, n152, n153, n102, n103, n104, n105, n106, n107, 
        n108, n109, n110, n111, n112, n113, n114, n115, n116, 
        n117, n118, n119, n120, n121, n122, n123, n124, n125;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX counter_19__i23 (.D(n102), .CK(osch_clk), .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i23.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(user_led0_c_21), .B(counter[23]), .C(counter[22]), 
         .Z(user_led2_c)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut.init = 16'h0404;
    GSR GSR_INST (.GSR(VCC_net));
    OB user_led0_pad (.I(user_led0_c_21), .O(user_led0));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(3[13:22])
    OSCH OSCH (.STDBY(GND_net), .OSC(osch_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH.NOM_FREQ = "15.65";
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    OB user_led1_pad (.I(user_led1_c), .O(user_led1));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(4[13:22])
    CCU2D counter_19_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n153), .S0(n102));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_25.INIT1 = 16'h0000;
    defparam counter_19_add_4_25.INJECT1_0 = "NO";
    defparam counter_19_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_23 (.A0(user_led0_c_21), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n152), .COUT(n153), .S0(n104), .S1(n103));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_23.INJECT1_0 = "NO";
    defparam counter_19_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_21 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n151), 
          .COUT(n152), .S0(n106), .S1(n105));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_21.INJECT1_0 = "NO";
    defparam counter_19_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_19 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n150), 
          .COUT(n151), .S0(n108), .S1(n107));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_19.INJECT1_0 = "NO";
    defparam counter_19_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_17 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n149), 
          .COUT(n150), .S0(n110), .S1(n109));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_17.INJECT1_0 = "NO";
    defparam counter_19_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_15 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n148), 
          .COUT(n149), .S0(n112), .S1(n111));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_15.INJECT1_0 = "NO";
    defparam counter_19_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_13 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n147), 
          .COUT(n148), .S0(n114), .S1(n113));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_13.INJECT1_0 = "NO";
    defparam counter_19_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_11 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n146), 
          .COUT(n147), .S0(n116), .S1(n115));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_11.INJECT1_0 = "NO";
    defparam counter_19_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_9 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n145), 
          .COUT(n146), .S0(n118), .S1(n117));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_9.INJECT1_0 = "NO";
    defparam counter_19_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_7 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n144), 
          .COUT(n145), .S0(n120), .S1(n119));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_7.INJECT1_0 = "NO";
    defparam counter_19_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_5 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n143), 
          .COUT(n144), .S0(n122), .S1(n121));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_5.INJECT1_0 = "NO";
    defparam counter_19_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_19_add_4_3 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n142), 
          .COUT(n143), .S0(n124), .S1(n123));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_19_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_19_add_4_3.INJECT1_0 = "NO";
    defparam counter_19_add_4_3.INJECT1_1 = "NO";
    LUT4 i24_2_lut (.A(counter[22]), .B(user_led0_c_21), .Z(user_led1_c)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(30[11] 42[5])
    defparam i24_2_lut.init = 16'h2222;
    CCU2D counter_19_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n24), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n142), .S1(n125));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19_add_4_1.INIT0 = 16'hF000;
    defparam counter_19_add_4_1.INIT1 = 16'h0555;
    defparam counter_19_add_4_1.INJECT1_0 = "NO";
    defparam counter_19_add_4_1.INJECT1_1 = "NO";
    FD1S3AX counter_19__i22 (.D(n103), .CK(osch_clk), .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i22.GSR = "ENABLED";
    FD1S3AX counter_19__i21 (.D(n104), .CK(osch_clk), .Q(user_led0_c_21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i21.GSR = "ENABLED";
    FD1S3AX counter_19__i20 (.D(n105), .CK(osch_clk), .Q(n4)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i20.GSR = "ENABLED";
    FD1S3AX counter_19__i19 (.D(n106), .CK(osch_clk), .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i19.GSR = "ENABLED";
    FD1S3AX counter_19__i18 (.D(n107), .CK(osch_clk), .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i18.GSR = "ENABLED";
    FD1S3AX counter_19__i17 (.D(n108), .CK(osch_clk), .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i17.GSR = "ENABLED";
    FD1S3AX counter_19__i16 (.D(n109), .CK(osch_clk), .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i16.GSR = "ENABLED";
    FD1S3AX counter_19__i15 (.D(n110), .CK(osch_clk), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i15.GSR = "ENABLED";
    FD1S3AX counter_19__i14 (.D(n111), .CK(osch_clk), .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i14.GSR = "ENABLED";
    FD1S3AX counter_19__i13 (.D(n112), .CK(osch_clk), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i13.GSR = "ENABLED";
    FD1S3AX counter_19__i12 (.D(n113), .CK(osch_clk), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i12.GSR = "ENABLED";
    FD1S3AX counter_19__i11 (.D(n114), .CK(osch_clk), .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i11.GSR = "ENABLED";
    FD1S3AX counter_19__i10 (.D(n115), .CK(osch_clk), .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i10.GSR = "ENABLED";
    FD1S3AX counter_19__i9 (.D(n116), .CK(osch_clk), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i9.GSR = "ENABLED";
    FD1S3AX counter_19__i8 (.D(n117), .CK(osch_clk), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i8.GSR = "ENABLED";
    FD1S3AX counter_19__i7 (.D(n118), .CK(osch_clk), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i7.GSR = "ENABLED";
    FD1S3AX counter_19__i6 (.D(n119), .CK(osch_clk), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i6.GSR = "ENABLED";
    FD1S3AX counter_19__i5 (.D(n120), .CK(osch_clk), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i5.GSR = "ENABLED";
    FD1S3AX counter_19__i4 (.D(n121), .CK(osch_clk), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i4.GSR = "ENABLED";
    FD1S3AX counter_19__i3 (.D(n122), .CK(osch_clk), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i3.GSR = "ENABLED";
    FD1S3AX counter_19__i2 (.D(n123), .CK(osch_clk), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i2.GSR = "ENABLED";
    FD1S3AX counter_19__i1 (.D(n124), .CK(osch_clk), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i1.GSR = "ENABLED";
    FD1S3AX counter_19__i0 (.D(n125), .CK(osch_clk), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(56[13:29])
    defparam counter_19__i0.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB user_led2_pad (.I(user_led2_c), .O(user_led2));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/blinky/blinky_lattice/blinky/tinyfpga_a2.v(5[13:22])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

