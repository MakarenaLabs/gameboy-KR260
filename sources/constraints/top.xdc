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

# PMOD 2
set_property PACKAGE_PIN J11      [get_ports {AUDIO_LEFT}];
set_property PACKAGE_PIN H11      [get_ports {AUDIO_RIGHT}];

set_property PACKAGE_PIN J10      [get_ports {RESET}];

# 0:A, 1: SELECT, 2: B, 3: START, 4: DX, 5: SX, 6: UP, 7: DOWN
# 0:A, 1: B, 2: SELECT, 3: START, 4: DX, 5: SX, 6: UP, 7: DOWN

set_property PACKAGE_PIN B11 [get_ports {BUTTONS[0]}]
set_property PACKAGE_PIN D11 [get_ports {BUTTONS[1]}]
set_property PACKAGE_PIN E10 [get_ports {BUTTONS[2]}]
set_property PACKAGE_PIN H12 [get_ports {BUTTONS[3]}]
set_property PACKAGE_PIN D10 [get_ports {BUTTONS[4]}]
set_property PACKAGE_PIN C11 [get_ports {BUTTONS[5]}]
set_property PACKAGE_PIN B10 [get_ports {BUTTONS[6]}]
set_property PACKAGE_PIN E12 [get_ports {BUTTONS[7]}]

# RASPBERRY PINOUT CARTRIDGE
set_property PACKAGE_PIN AE15 [get_ports {CART_CLK}]
set_property PACKAGE_PIN AE14 [get_ports {CART_WR}]
set_property PACKAGE_PIN AG14 [get_ports {CART_RD}]
set_property PACKAGE_PIN W14 [get_ports {CART_ADDR[0]}]
set_property PACKAGE_PIN W13 [get_ports {CART_ADDR[1]}]
set_property PACKAGE_PIN AB14 [get_ports {CART_ADDR[2]}]
set_property PACKAGE_PIN Y14 [get_ports {CART_ADDR[3]}]
set_property PACKAGE_PIN AB9 [get_ports {CART_ADDR[4]}]
set_property PACKAGE_PIN Y12 [get_ports {CART_ADDR[5]}]
set_property PACKAGE_PIN AA12 [get_ports {CART_ADDR[6]}]
set_property PACKAGE_PIN Y9 [get_ports {CART_ADDR[7]}]
set_property PACKAGE_PIN AE13 [get_ports {CART_ADDR[8]}]
set_property PACKAGE_PIN AC13 [get_ports {CART_ADDR[9]}]
set_property PACKAGE_PIN AA8 [get_ports {CART_ADDR[10]}]
set_property PACKAGE_PIN AF13 [get_ports {CART_ADDR[11]}]
set_property PACKAGE_PIN AC14 [get_ports {CART_ADDR[12]}]
set_property PACKAGE_PIN AH13 [get_ports {CART_ADDR[13]}]
set_property PACKAGE_PIN AD15 [get_ports {CART_ADDR[14]}]
set_property PACKAGE_PIN AD14 [get_ports {CART_ADDR[15]}]
set_property PACKAGE_PIN AH14 [get_ports {CART_DATA[0]}]
set_property PACKAGE_PIN AG13 [get_ports {CART_DATA[1]}]
set_property PACKAGE_PIN AB13 [get_ports {CART_DATA[2]}]
set_property PACKAGE_PIN AA13 [get_ports {CART_DATA[3]}]
set_property PACKAGE_PIN AB15 [get_ports {CART_DATA[4]}]
set_property PACKAGE_PIN Y13 [get_ports {CART_DATA[5]}]
set_property PACKAGE_PIN AB10 [get_ports {CART_DATA[6]}]
set_property PACKAGE_PIN W11 [get_ports {CART_DATA[7]}]
set_property PACKAGE_PIN W12 [get_ports {CART_RST}]
# CARTRIDGE CHIP SELECT
set_property PACKAGE_PIN K13 [get_ports {CART_SEL}]

set_property PACKAGE_PIN F11 [get_ports {CLOCK_PAC}]

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
set_property IOSTANDARD LVCMOS33 [get_ports BUTTONS[*]]
set_property PULLUP TRUE [get_ports BUTTONS[*]]

set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_LEFT]
set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_RIGHT]
set_property IOSTANDARD LVCMOS33 [get_ports COLOR_GB]

set_property IOSTANDARD LVCMOS33 [get_ports CART_CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CART_WR]
set_property IOSTANDARD LVCMOS33 [get_ports CART_RD]
set_property IOSTANDARD LVCMOS33 [get_ports CART_ADDR[*]]
set_property IOSTANDARD LVCMOS33 [get_ports CART_DATA[*]]
set_property IOSTANDARD LVCMOS33 [get_ports CART_RST]
set_property IOSTANDARD LVCMOS33 [get_ports CART_SEL]

set_property IOSTANDARD LVCMOS33 [get_ports RESET]
set_property PULLUP TRUE [get_ports RESET]

# 25Mhz clock
set_property PACKAGE_PIN C3 [get_ports {CLK_IN_gem}]
set_property IOSTANDARD LVCMOS18 [get_ports {CLK_IN_gem}]

#revert back to original instance
#current_instance -quiet
