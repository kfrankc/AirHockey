`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:06:49 06/03/2016
// Design Name:   game
// Module Name:   C:/Users/152/Desktop/AirHockey/AirHockey/game_tb.v
// Project Name:  AirHockey
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: game
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module game_tb;

	// Inputs
	reg clk;
	reg [9:0] xpos;
	reg [9:0] ypos;
	reg btnl_v;
	reg btnd_v;
	reg btnr_v;
	reg btnu_v;
	reg btns_v;

	// Outputs
	wire [3:0] p1_ones;
	wire [2:0] p1_tens;
	wire [3:0] p2_ones;
	wire [2:0] p2_tens;
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;

	// Instantiate the Unit Under Test (UUT)
	game uut (
		.clk(clk), 
		.xpos(xpos), 
		.ypos(ypos), 
		.btnl_v(btnl_v), 
		.btnd_v(btnd_v), 
		.btnr_v(btnr_v), 
		.btnu_v(btnu_v), 
		.btns_v(btns_v), 
		.p1_ones(p1_ones), 
		.p1_tens(p1_tens), 
		.p2_ones(p2_ones), 
		.p2_tens(p2_tens), 
		.red(red), 
		.green(green), 
		.blue(blue)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		xpos = 0;
		ypos = 0;
		btnl_v = 0;
		btnd_v = 0;
		btnr_v = 0;
		btnu_v = 0;
		btns_v = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10;
		btnl_v = 1;
		#10;
		btnd_v = 1;
		#10;
		btnr_v = 1;
		#10;
		btnu_v = 1;
		#10;
		btns_v = 1;
	end
	
	always #10
		clk= ~clk;
      
endmodule

