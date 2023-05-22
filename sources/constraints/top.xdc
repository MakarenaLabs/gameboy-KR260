# PMOD 3
set_property PACKAGE_PIN AC12 [get_ports {RED[4]}];
set_property PACKAGE_PIN AD11 [get_ports {BLUE[4]}];
set_property PACKAGE_PIN AD12 [get_ports {RED[5]}];
set_property PACKAGE_PIN AD10 [get_ports {BLUE[5]}];
set_property PACKAGE_PIN AE10 [get_ports {RED[6]}];
set_property PACKAGE_PIN AA11 [get_ports {BLUE[6]}];
set_property PACKAGE_PIN AF10 [get_ports {RED[7]}];
set_property PACKAGE_PIN AA10 [get_ports {BLUE[7]}];

# PMOD 4
set_property PACKAGE_PIN AE12 [get_ports {GREEN[4]}];
set_property PACKAGE_PIN AF11 [get_ports {HSYNC}];
set_property PACKAGE_PIN AF12 [get_ports {GREEN[5]}];
set_property PACKAGE_PIN AG11 [get_ports {VSYNC}];
set_property PACKAGE_PIN AG10 [get_ports {GREEN[6]}];
# AH12 NC
set_property PACKAGE_PIN AH10 [get_ports {GREEN[7]}];
# AH11 NC

# PMOD 1
set_property PACKAGE_PIN H12      [get_ports {AUDIO_LEFT}];
set_property PACKAGE_PIN B10      [get_ports {AUDIO_RIGHT}];
set_property PACKAGE_PIN E10      [get_ports {COLOR_GB}];

#set_property PACKAGE_PIN Y21 [get_ports {vga_b[7]}]
#set_property PACKAGE_PIN Y20 [get_ports {vga_b[6]}]
#set_property PACKAGE_PIN AB20 [get_ports {vga_b[5]}]
#set_property PACKAGE_PIN AB19 [get_ports {vga_b[4]}]
#set_property PACKAGE_PIN AB22 [get_ports {vga_g[7]}]
#set_property PACKAGE_PIN AA22 [get_ports {vga_g[6]}]
#set_property PACKAGE_PIN AB21 [get_ports {vga_g[5]}]
#set_property PACKAGE_PIN AA21 [get_ports {vga_g[4]}]
#set_property PACKAGE_PIN V20 [get_ports {vga_r[7]}]
#set_property PACKAGE_PIN U20 [get_ports {vga_r[6]}]
#set_property PACKAGE_PIN V19 [get_ports {vga_r[5]}]
#set_property PACKAGE_PIN V18 [get_ports {vga_r[4]}]
#set_property PACKAGE_PIN H19 [get_ports reset]
#set_property PACKAGE_PIN AA19 [get_ports vga_hs]
#set_property PACKAGE_PIN Y19 [get_ports vga_vs]
#set_property PACKAGE_PIN Y9 [get_ports CLK_100MHZ_FPGA]

#set_property PACKAGE_PIN P16 [get_ports {buttons[0]}]
#set_property PACKAGE_PIN F22 [get_ports {buttons[1]}]
#set_property PACKAGE_PIN H22 [get_ports {buttons[2]}]
#set_property PACKAGE_PIN G22 [get_ports {buttons[3]}]
#set_property PACKAGE_PIN R18 [get_ports {buttons[4]}]
#set_property PACKAGE_PIN N15 [get_ports {buttons[5]}]
#set_property PACKAGE_PIN T18 [get_ports {buttons[6]}]
#set_property PACKAGE_PIN R16 [get_ports {buttons[7]}]

#set_property PACKAGE_PIN M15 [get_ports slow]
#set_property PACKAGE_PIN H17 [get_ports pause]
#set_property PACKAGE_PIN AB1 [get_ports AC_ADR0]
#set_property PACKAGE_PIN Y5 [get_ports AC_ADR1]
#set_property PACKAGE_PIN AA7 [get_ports AC_GPIO1]
#set_property PACKAGE_PIN AA6 [get_ports AC_GPIO2]
#set_property PACKAGE_PIN Y6 [get_ports AC_GPIO3]
#set_property PACKAGE_PIN AB2 [get_ports AC_MCLK]
#set_property PACKAGE_PIN Y8 [get_ports AC_GPIO0]
#set_property PACKAGE_PIN AB4 [get_ports AC_SCK]
#set_property PACKAGE_PIN AB5 [get_ports AC_SDA]


#set_property DIRECTION IN [get_ports {buttons[*]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {buttons[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports VSYNC]
set_property PULLUP TRUE [get_ports VSYNC]
set_property IOSTANDARD LVCMOS33 [get_ports HSYNC]
set_property PULLUP TRUE [get_ports HSYNC]
set_property IOSTANDARD LVCMOS33 [get_ports CLOCK_PAC]
set_property IOSTANDARD LVCMOS33 [get_ports BLUE[*]]
set_property PULLUP TRUE [get_ports BLUE[*]]
set_property IOSTANDARD LVCMOS33 [get_ports GREEN[*]]
set_property PULLUP TRUE [get_ports GREEN[*]]
set_property IOSTANDARD LVCMOS33 [get_ports RED[*]]
set_property PULLUP TRUE [get_ports RED[*]]

set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_LEFT]
set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_RIGHT]
set_property IOSTANDARD LVCMOS33 [get_ports COLOR_GB]

#set_property DIRECTION OUT [get_ports AC_ADR0]
#set_property IOSTANDARD LVCMOS33 [get_ports AC_ADR0]
#set_property DRIVE 12 [get_ports AC_ADR0]
#set_property SLEW SLOW [get_ports AC_ADR0]
#set_property DIRECTION OUT [get_ports AC_ADR1]
#set_property IOSTANDARD LVCMOS33 [get_ports AC_ADR1]
#set_property DRIVE 12 [get_ports AC_ADR1]
#set_property SLEW SLOW [get_ports AC_ADR1]

#set_property DIRECTION OUT [get_ports AC_GPIO0]
#set_property IOSTANDARD LVCMOS33 [get_ports AC_GPIO0]
#set_property DRIVE 12 [get_ports AC_GPIO0]
#set_property SLEW SLOW [get_ports AC_GPIO0]
#set_property DIRECTION IN [get_ports AC_GPIO1]
#set_property IOSTANDARD LVCMOS33 [get_ports AC_GPIO1]
#set_property DIRECTION IN [get_ports AC_GPIO2]
#set_property IOSTANDARD LVCMOS33 [get_ports AC_GPIO2]
#set_property DIRECTION IN [get_ports AC_GPIO3]
#set_property IOSTANDARD LVCMOS33 [get_ports AC_GPIO3]
#set_property DIRECTION OUT [get_ports AC_MCLK]
#set_property IOSTANDARD LVCMOS33 [get_ports AC_MCLK]
#set_property DRIVE 12 [get_ports AC_MCLK]
#set_property SLEW SLOW [get_ports AC_MCLK]
#set_property DIRECTION OUT [get_ports AC_SCK]
#set_property IOSTANDARD LVCMOS33 [get_ports AC_SCK]
#set_property DRIVE 12 [get_ports AC_SCK]
#set_property SLEW SLOW [get_ports AC_SCK]
#set_property DIRECTION INOUT [get_ports AC_SDA]
#set_property IOSTANDARD LVCMOS33 [get_ports AC_SDA]
#set_property DRIVE 12 [get_ports AC_SDA]
#set_property SLEW SLOW [get_ports AC_SDA]
#set_property DIRECTION IN [get_ports pause]
#set_property IOSTANDARD LVCMOS33 [get_ports pause]
#set_property DIRECTION IN [get_ports reset]
#set_property IOSTANDARD LVCMOS33 [get_ports reset]
#set_property DIRECTION IN [get_ports slow]
#set_property IOSTANDARD LVCMOS33 [get_ports slow]

# 25Mhz clock
set_property PACKAGE_PIN C3 [get_ports {CLK_IN_gem}]
#set_property DIRECTION IN [get_ports {CLK_IN_gem}]
set_property IOSTANDARD LVCMOS18 [get_ports {CLK_IN_gem}]

#revert back to original instance
#current_instance -quiet
