// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat May 20 00:00:37 2023
// Host        : DESKTOP-0EJK665 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/enric/MAKARENALABS/Xilinx/VerilogBoy-Zedboard/VivadoProject2/project_2.srcs/sources_1/ip/vga_mem/vga_mem_stub.v
// Design      : vga_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *)
module vga_mem(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[14:0],dina[1:0],clkb,addrb[14:0],doutb[1:0]" */;
  input clka;
  input [0:0]wea;
  input [14:0]addra;
  input [1:0]dina;
  input clkb;
  input [14:0]addrb;
  output [1:0]doutb;
endmodule
