`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:44 05/16/2016 
// Design Name: 
// Module Name:    game 
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
//
//////////////////////////////////////////////////////////////////////////////////
module game(
	clk,
	vgaRed,
	vgaGreen,
	vgaBlue,
	Hsync,
	Vsync
	);
	input clk;
	output [2:0] vgaRed;
	output [2:0] vgaGreen;
	output [2:1] vgaBlue;
	output Hsync, Vsync;
	
	vga_sync vga_module(
		.clk(clk),
		.vgaRed(vgaRed),
		.vgaGreen(vgaGreen),
		.vgaBlue(vgaBlue),
		.Hsync(Hsync),
		.Vsync(Vsync)
	);



endmodule
