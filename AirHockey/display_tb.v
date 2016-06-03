`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:07:16 06/03/2016
// Design Name:   display
// Module Name:   C:/Users/152/Desktop/AirHockey/AirHockey/display_tb.v
// Project Name:  AirHockey
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module display_tb;

	// Inputs
	reg clk;
	reg [3:0] p2_ones;
	reg [2:0] p2_tens;
	reg [3:0] p1_ones;
	reg [2:0] p1_tens;

	// Outputs
	wire [3:0] an;
	wire [7:0] seg;
	wire [1:0] count;

	// Instantiate the Unit Under Test (UUT)
	display uut (
		.clk(clk), 
		.p2_ones(p2_ones), 
		.p2_tens(p2_tens), 
		.p1_ones(p1_ones), 
		.p1_tens(p1_tens), 
		.an(an), 
		.seg(seg), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		p2_ones = 0;
		p2_tens = 0;
		p1_ones = 0;
		p1_tens = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		p1_ones = 5;
		p2_ones = 5;
		#100;
		p1_ones = 9;
		p2_ones = 9;
		#100;
		p1_tens = 1;
		p2_tens = 1;
		

	end
	
	always #10
		clk= ~clk;
      
endmodule

