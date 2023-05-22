// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat May 20 00:00:37 2023
// Host        : DESKTOP-0EJK665 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/enric/MAKARENALABS/Xilinx/VerilogBoy-Zedboard/VivadoProject2/project_2.srcs/sources_1/ip/vga_mem/vga_mem_sim_netlist.v
// Design      : vga_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vga_mem,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module vga_mem
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [14:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [1:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [14:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [1:0]doutb;

  wire [14:0]addra;
  wire [14:0]addrb;
  wire clka;
  wire clkb;
  wire [1:0]dina;
  wire [1:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [1:0]NLW_U0_douta_UNCONNECTED;
  wire [14:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [14:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "15" *) 
  (* C_ADDRB_WIDTH = "15" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "3" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.550026 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "vga_mem.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "23040" *) 
  (* C_READ_DEPTH_B = "23040" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "2" *) 
  (* C_READ_WIDTH_B = "2" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "23040" *) 
  (* C_WRITE_DEPTH_B = "23040" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "2" *) 
  (* C_WRITE_WIDTH_B = "2" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  vga_mem_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[1:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[14:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[14:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[1:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48224)
`pragma protect data_block
+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
q7o=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
