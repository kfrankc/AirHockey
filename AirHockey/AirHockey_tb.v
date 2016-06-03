`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:06:28 06/03/2016
// Design Name:   AirHockey
// Module Name:   C:/Users/152/Desktop/AirHockey/AirHockey/AirHockey_tb.v
// Project Name:  AirHockey
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AirHockey
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AirHockey_tb;

	// Inputs
	reg InputClock;
	reg btnl;
	reg btnd;
	reg btnr;
	reg btnu;
	reg btns;

	// Outputs
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;
	wire hsync;
	wire vsync;
	wire [7:0] seg;
	wire [3:0] an;

	// Instantiate the Unit Under Test (UUT)
	AirHockey uut (
		.InputClock(InputClock), 
		.btnl(btnl), 
		.btnd(btnd), 
		.btnr(btnr), 
		.btnu(btnu), 
		.btns(btns), 
		.red(red), 
		.green(green), 
		.blue(blue), 
		.hsync(hsync), 
		.vsync(vsync), 
		.seg(seg), 
		.an(an)
	);

	initial begin
		// Initialize Inputs
		InputClock = 0;
		btnl = 0;
		btnd = 0;
		btnr = 0;
		btnu = 0;
		btns = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		btnl = 1;
		#10;
		btnd = 1;
		#10;
		btnr = 1;
		#10;
		btnu = 1;
		#10;
		btns = 1;

	end
	
	always #10
		InputClock = ~InputClock;
		
	
      
endmodule

