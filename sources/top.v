`timescale 1ns / 1ps
`default_nettype wire

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/03 17:54:43
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define CARTRIDGE


module top(
    output wire vga_hs,
    output wire vga_vs,
    output wire[7:4] vga_r,
    output wire[7:4] vga_g,
    output wire[7:4] vga_b,
    input  wire ext_reset,
    input  wire CLK_100MHZ_FPGA,
    //output wire AC_MCLK,
    //output wire AC_ADR0,
    //output wire AC_ADR1,
    //output wire AC_SCK,
    //inout wire AC_SDA,
    //output wire AC_GPIO0,
    //input wire AC_GPIO1,
    //input wire AC_GPIO2,
    //input wire AC_GPIO3,
    output wire clk_gb,
    output wire[15:0] audio_left,
    output wire[15:0] audio_right,
    
    input wire[7:0] buttons,
    //input wire pause,
    //input wire slow,
    input wire color_gb,
    
    // physical cartridge
    output wire[15:0] cartridge_addr,
    inout wire[7:0] cartridge_data,
    output wire cartridge_wr,
    output wire cartridge_rd,
    output wire cartridge_rst,
    output wire cartridge_clk,
    output supply1 cartridge_sel
    );
    
    wire[7:0] dummy;
    
    //reg clk_gb;
    wire clk_vga;
    wire clk_gb2;
    wire clk_mem;
    wire clk_100;
    wire clk_rr;
    reg reset = 0;
    


    pll pll(
        .clk_mem(clk_mem),
        .clk_vga(clk_vga),
        .clk_gb2(clk_gb2),
        .clk_100(clk_100),
        .clk_in1(CLK_100MHZ_FPGA)
        //.reset(reset)
    );
    /*
    always @(posedge clk_gb2)begin
        clk_gb<=~clk_gb;
    end
    */
    clock_div #(.DIV_2N(6)) c2 (.clk_in(clk_gb2), .clk_out(clk_gb));

    
    wire[23:0] wave_l_24;
    wire[23:0] wave_r_24;
    
    //Cartridge
    wire [15:0] vb_a;
    wire [7:0]  vb_dout;
    wire [7:0]  vb_din;
    wire        vb_wr;
    wire        vb_rd;
    //wire        vb_cs;
    
    //Video signal
    wire gb_hs;
    wire gb_vs;
    wire gb_cpl;
    wire[1:0] gb_pixel;
    wire gb_valid;
    
    wire[7:0] key;
    
    /*
    anti_vibration btn(
        .mclk(clk_gb),
        .rst_n(reset),
        .key(buttons),
        .key_en(key)
    );
    */
    
`ifndef CARTRIDGE
    
    boy boy(
        .rst(reset),
        .clk(clk_gb),
        .phi(clk_rr),
        .a(vb_a),
        .dout(vb_dout),
        .din(vb_din),
        .wr(vb_wr),
        .rd(vb_rd),
        .cs(),
        .key(buttons),
        .hs(gb_hs),
        .vs(gb_vs),
        .cpl(gb_cpl),
        .pixel(gb_pixel),
        .valid(gb_valid),
        //.left(wave_l_24[20:5]),
        //.right(wave_r_24[20:5]),
        .left(audio_left),
        .right(audio_right),
        .fault()
    );
    
    //MBC5
    wire [22:0] vb_rom_a;
    wire [16:0] vb_ram_a;
    wire vb_ram_cs_n;
    wire [7:0] vb_crom_dout;

    mbc5 mbc5(
       .vb_clk(clk_gb),
       .vb_a(vb_a[15:12]),
       .vb_d(vb_dout),
       .vb_wr(vb_wr),
       .vb_rd(vb_rd),
       .vb_rst(reset),
       .rom_a(vb_rom_a[22:14]),
       .ram_a(vb_ram_a[16:13]),
       .rom_cs_n(),
       .ram_cs_n(vb_ram_cs_n)
    );
    assign vb_rom_a[13:0] = vb_a[13:0];
    assign vb_ram_a[12:0] = vb_a[12:0];
   
    wire [7:0] vb_cram_dout;
    wire vb_cram_wr = !vb_ram_cs_n & vb_wr;
 
    singleport_ram #(
        .WORDS(32768),
        .ABITS(15)
    )Cart_ram_inst(
	    .addra (vb_ram_a),
	    .clka (clk_gb),
	    .dina (vb_dout),
	    .wea (vb_cram_wr),
	    .douta (vb_cram_dout)
    );

    
    wire [7:0] cartridgeRomOut;
    Cartridge cartridge (
        .addra(vb_rom_a[17:0]),
        .clka(clk_gb),
        .douta(cartridgeRomOut)
    );
    
    assign vb_crom_dout = cartridgeRomOut;
    assign vb_din = (vb_ram_cs_n) ? (vb_crom_dout) : (vb_cram_dout);

`else

    boy boy(
        .rst(reset),
        .clk(clk_gb),
        .phi(clk_rr),
        .a(vb_a),
        .dout(vb_dout),
        .din(vb_din),
        .wr(vb_wr),
        .rd(vb_rd),
        //.cs(vb_cs),
        .key(buttons),
        .hs(gb_hs),
        .vs(gb_vs),
        .cpl(gb_cpl),
        .pixel(gb_pixel),
        .valid(gb_valid),
        //.left(wave_l_24[20:5]),
        //.right(wave_r_24[20:5]),
        .left(audio_left),
        .right(audio_right),
        .fault()
    );


    assign cartridge_addr = vb_a;
    assign cartridge_clk = clk_rr;
    assign cartridge_wr = ~vb_wr;
    assign cartridge_rd = ~vb_rd;
    assign cartridge_rst = ~reset;
    //assign cartridge_sel = ~vb_cs;
    assign vb_din = cartridge_data;
    assign cartridge_data = vb_wr ? vb_dout : 8'bz;

    //https://forums.nesdev.org/viewtopic.php?t=10914


    reg[23:0] rst_delay = 24'h000000;
    reg is_resetting = 0;
    always @(posedge clk_100) begin
        if(ext_reset) begin
            rst_delay = 24'h000000;
            reset <= 1;
            is_resetting <= 1;
        end
        if(is_resetting) begin
            if (rst_delay == 24'hffffff) begin
                reset <= 0;
                is_resetting <= 0;
            end
            else if (rst_delay < 24'hffffff) begin
                rst_delay <= rst_delay + 1;
            end
        end
    end
    
    
`endif    
    
    /*
    audio_top audio_top(
           .clk_100(CLK_100MHZ_FPGA),
           .AC_MCLK(AC_MCLK),
		   .AC_ADR0(AC_ADR0),
           .AC_ADR1(AC_ADR1),
		   .AC_SCK(AC_SCK),
           .AC_SDA(AC_SDA),
		   .AC_GPIO0(AC_GPIO0),
           .AC_GPIO1(AC_GPIO1),
           .AC_GPIO2(AC_GPIO2),
           .AC_GPIO3(AC_GPIO3),
           .hphone_l(wave_l_24),
           .hphone_l_valid(1'b1),
           .hphone_r(wave_r_24),
           .hphone_r_valid_dummy(1'b1),
           .line_in_l(),
           .line_in_r(),
           .new_sample(),
           .sample_clk_48k()
    );
    */
    
    wire[7:0] r8;
    wire[7:0] g8;
    wire[7:0] b8;
    
    assign vga_r=r8[7:4];
    assign vga_g=g8[7:4];
    assign vga_b=b8[7:4];
    
    vga_mixer vga_mixer(
       .clk_mem(clk_mem),
	   .clk(~clk_vga),
       .rst(reset),
   // GameBoy Image Input
       .gb_hs(gb_hs),
       .gb_vs(gb_vs),
       .gb_pclk(gb_cpl),
       .gb_pdat(gb_pixel),
       .gb_valid(gb_valid),
       .gb_en(1'd1),
       
   // VGA signal Output
       .vga_hs(vga_hs),
       .vga_vs(vga_vs),
       
       .vga_r(r8),
       .vga_g(g8),
       .vga_b(b8),
       .hold(1'b0),
       
       .color_gb(color_gb)
       
    );
endmodule
