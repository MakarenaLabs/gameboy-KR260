# Game Boy KR260

This project aims to port the VerilogBoy Game Boy emulator (https://github.com/zephray/VerilogBoy) to the Xilinx KR260 FPGA. The VerilogBoy emulator allows you to play Game Boy games on FPGA hardware.

## Project Setup

To recreate the project in Vivado, follow these steps:

1. Open Vivado and navigate to the "project" folder.
2. Launch Vivado and run the command "source project.tcl".

## Compiling and Loading Bitstream

Once the project is compiled in Vivado, you can load the bitstream onto the KR260 FPGA by following these commands in XSCT (Xilinx Software Command-line Tool) in sequence:

1. Connect
2. targets -set -nocase -filter {name =~ "\*PSU\*"}
3. mwr 0xff5e0200 0x0100
4. rst -system

Then, via Vivado, click on "Program device".

## Project Structure

The project directory has the following structure:

- `project`: contains the TCL project file for recreating the project.
- `sources`: contains the project sources.
- `tools`: contains scripts for converting a Game Boy ROM file to COE format for loading the ROM into the Cartridge IP.

## Loading a New Cartridge

![Tobu Tobu deluxe](assets/Tobu_Tobu_Girl_Deluxe.webp)


To load a new Game Boy cartridge, generate the COE file and load it via Vivado interface. Follow these steps:

1. Generate the COE file using the provided tools/scripts.
2. Extract the number of lines of the .hex file and set it on the "Cartridge" IP ROM size. 
3. Load the COE file in Vivado.

## VGA Output and Joystick Mapping

For VGA output, you can use a PMOD VGA adapter. We recommend using [this PMOD VGA adapter](https://digilent.com/shop/pmod-vga-video-graphics-array/) by Digilent. Connect the PMOD VGA adapter to the PMOD 3-4 ports.

The audio output is mapped on PMOD 2 on pin 1 (left channel) and pin 2 (right channel).

To map the joystick pins, replace the constant IP [0:7] with the desired PMOD pins.
The joystick mapping is the following:
- 0: A 
- 1: SELECT
- 2: B
- 3: START
- 4: DX
- 5: SX
- 6: UP
- 7: DOWN

When the signal is high, a button will trigger an event. If you implement your joystick in pull-up configuration, remember to invert the signal (with a Utility Vector Logic IP for example)

## License

This project is licensed under the MIT License.

Please refer to the LICENSE file for more details.

# References

VerilogBoy : https://github.com/zephray/VerilogBoy

Tobu Tobu Girl DX, an open-source game for GBC : https://github.com/SimonLarsen/tobutobugirl-dx
