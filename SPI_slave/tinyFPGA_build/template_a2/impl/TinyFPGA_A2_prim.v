// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Wed Apr 01 10:34:10 2020
//
// Verilog Description of module TinyFPGA_A2
//

module TinyFPGA_A2 (pin1, pin2, pin3_sn, pin4_mosi, pin5, pin6, 
            pin7_done, pin8_pgmn, pin9_jtgnb, pin10_sda, pin11_scl, 
            pin16, pin17, pin18_cs, pin19_sclk, pin20_miso, pin21, 
            pin22) /* synthesis syn_module_defined=1 */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(1[8:19])
    output pin1 /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(2[9:13])
    output pin2 /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(3[9:13])
    output pin3_sn /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(4[9:16])
    output pin4_mosi /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(5[9:18])
    output pin5 /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(6[9:13])
    output pin6 /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(7[9:13])
    output pin7_done /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(8[9:18])
    output pin8_pgmn /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(9[9:18])
    output pin9_jtgnb /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(10[9:19])
    output pin10_sda /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(11[9:18])
    output pin11_scl /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(12[9:18])
    output pin16 /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(17[9:14])
    output pin17 /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(18[9:14])
    output pin18_cs /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(19[9:17])
    output pin19_sclk /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(20[9:19])
    output pin20_miso /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(21[9:19])
    output pin21 /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(22[9:14])
    output pin22 /* synthesis .original_dir=IN_OUT */ ;   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(23[9:14])
    
    
    wire GND_net, VCC_net;
    
    VHI i61 (.Z(VCC_net));
    OBZ pin1_pad (.I(GND_net), .T(VCC_net), .O(pin1));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(27[10:14])
    OBZ pin2_pad (.I(GND_net), .T(VCC_net), .O(pin2));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(28[10:14])
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(29[10:17])
    OBZ pin4_mosi_pad (.I(GND_net), .T(VCC_net), .O(pin4_mosi));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(30[10:19])
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(31[10:14])
    OBZ pin6_pad (.I(GND_net), .T(VCC_net), .O(pin6));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(32[10:14])
    OBZ pin7_done_pad (.I(GND_net), .T(VCC_net), .O(pin7_done));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(33[10:19])
    OBZ pin8_pgmn_pad (.I(GND_net), .T(VCC_net), .O(pin8_pgmn));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(34[10:19])
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(35[10:20])
    OBZ pin10_sda_pad (.I(GND_net), .T(VCC_net), .O(pin10_sda));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(36[10:19])
    OBZ pin11_scl_pad (.I(GND_net), .T(VCC_net), .O(pin11_scl));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(37[10:19])
    OBZ pin16_pad (.I(GND_net), .T(VCC_net), .O(pin16));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(44[10:15])
    OBZ pin17_pad (.I(GND_net), .T(VCC_net), .O(pin17));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(45[10:15])
    OBZ pin18_cs_pad (.I(GND_net), .T(VCC_net), .O(pin18_cs));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(46[10:18])
    OBZ pin19_sclk_pad (.I(GND_net), .T(VCC_net), .O(pin19_sclk));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(47[10:20])
    VLO i4 (.Z(GND_net));
    OBZ pin20_miso_pad (.I(GND_net), .T(VCC_net), .O(pin20_miso));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(48[10:20])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OBZ pin21_pad (.I(GND_net), .T(VCC_net), .O(pin21));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(49[10:15])
    TSALL TSALL_INST (.TSALL(GND_net));
    OBZ pin22_pad (.I(GND_net), .T(VCC_net), .O(pin22));   // c:/cygwin64/home/robin/documents/migen_tinyfpga/spi_slave/tinyfpga_build/template_a2/tinyfpga_a2.v(50[10:15])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

