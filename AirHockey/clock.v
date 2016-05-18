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
module clock(InputClock, clk50);
	input InputClock;
	output clk50;
	
	parameter hz50m_beat = 2; //50 MHz
	
	//create 
	reg [26:0] hz50m_clk_count = -1;
	reg hz50m_clk;
	always @ (negedge InputClock, posedge InputClock)
		begin
			if(hz50m_clk_count >= hz50m_beat - 1)
				hz50m_clk_count = 0;
			else
				hz50m_clk_count = hz50m_clk_count + 1;
		end
				
	always@*
		begin
			if(hz50m_clk_count == 0)
				hz50m_clk = 1;
			else
				hz50m_clk = 0;
		end
	
	assign clk50 = hz50m_clk;
endmodule
