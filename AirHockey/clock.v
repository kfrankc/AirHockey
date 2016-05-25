`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:34 05/18/2016 
// Design Name: 
// Module Name:    clock 
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
module clock(InputClock, clk50, clk400);
	input InputClock;
	output clk50;
	output clk400;
	
	parameter hz50m_beat = 2; //50 MHz
	parameter fast_beat = 250_000; //400Hz
	
	//create 
	reg [26:0] hz50m_clk_count = -1;
	reg [26:0] fast_clk_count = -1;
	
	reg hz50m_clk;
	reg fast_clk;
	
	always @ (negedge InputClock, posedge InputClock)
		begin
			if(hz50m_clk_count >= hz50m_beat - 1)
				hz50m_clk_count = 0;
			else
				hz50m_clk_count = hz50m_clk_count + 1;
			if(fast_clk_count >= fast_beat - 1)
				fast_clk_count = 0;
			else
				fast_clk_count = fast_clk_count + 1;
		end
				
	always@*
		begin
			if(hz50m_clk_count == 0)
				hz50m_clk = 1;
			else
				hz50m_clk = 0;
			if(fast_clk_count == 0)
				fast_clk = 1;
			else
				fast_clk = 0;

		end
	assign clk50 = hz50m_clk;
	assign clk400 = fast_clk;
endmodule
