-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri May 19 23:58:35 2023
-- Host        : DESKTOP-0EJK665 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/enric/MAKARENALABS/Xilinx/VerilogBoy-Zedboard/VivadoProject2/project_2.srcs/sources_1/ip/pll/pll_stub.vhdl
-- Design      : pll
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pll is
  Port ( 
    clk_gb2 : out STD_LOGIC;
    clk_vga : out STD_LOGIC;
    clk_mem : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end pll;

architecture stub of pll is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_gb2,clk_vga,clk_mem,clk_in1";
begin
end;
