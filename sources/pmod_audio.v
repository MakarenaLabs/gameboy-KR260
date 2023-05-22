`timescale 1ns / 1ps

module pmod_audio (
	input wire clk,     // 21.477 Mhz
	input wire [15:0] sample,       // sampling rate is 21477 / 512 = 42 Khz  
	output wire output_pmod
//    input wire clk,     // 14 Mhz
);

reg [8:0] counter = 0;
reg [15:0] audio_latched = 0;
reg aud_pwm;

assign output_pmod = aud_pwm;

always @(posedge clk) begin
    if (counter == 0)
        audio_latched <= sample;
    if (counter < 1 || ({counter,7'b0} < audio_latched && counter < 511) )
        aud_pwm <= 1;
    else
        aud_pwm <= 0;
    counter <= counter + 1;
end

endmodule