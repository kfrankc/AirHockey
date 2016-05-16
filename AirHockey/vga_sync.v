`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:06 05/16/2016 
// Design Name: 
// Module Name:    vga_sync 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
// VGA monitor requires 5 signals to display picture
// R, G, B, HS, VS
// CounterX counts 768 values
// CounterY counts 512 values
//////////////////////////////////////////////////////////////////////////////////
module vga_sync(
	clk,
	vgaRed,
	vgaGreen,
	vgaBlue,
	Hsync,
	Vsync
	);
	
	input clk;
	reg [9:0] CounterX;
	reg [9:0] CounterY;
	reg vga_HS, vga_VS;
	wire CounterXmaxed = (CounterX == 767);
	
	output vgaRed, vgaGreen, vgaBlue;
	output Hsync;
	output Vsync;
	
	always @(posedge clk)
		if (CounterXmaxed)
			CounterX <= 0;
		else
			CounterX <= CounterX + 1;
	
	always @(posedge clk)
		if (CounterXmaxed)
			CounterY <= CounterY + 1;
	
	always @(posedge clk)
		begin
			vga_HS <= (CounterX[9:4] == 0); 
			vga_VS <= (CounterY==0);
		end
		
	assign Hsync = ~vga_HS;
	assign Vsync = ~vga_VS;
	
	assign vgaRed = CounterY[3] | (CounterX==256);
	assign vgaGreen = (CounterX[5] ^ CounterX[6]) | (CounterX==256);
	assign vgaBlue = CounterX[4] | (CounterX==256);


endmodule
