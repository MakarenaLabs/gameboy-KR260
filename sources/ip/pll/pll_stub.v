// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri May 19 23:58:35 2023
// Host        : DESKTOP-0EJK665 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/enric/MAKARENALABS/Xilinx/VerilogBoy-Zedboard/VivadoProject2/project_2.srcs/sources_1/ip/pll/pll_stub.v
// Design      : pll
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pll(clk_gb2, clk_vga, clk_mem, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_gb2,clk_vga,clk_mem,clk_in1" */;
  output clk_gb2;
  output clk_vga;
  output clk_mem;
  input clk_in1;
endmodule
