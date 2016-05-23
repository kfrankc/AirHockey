`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:45 05/23/2016 
// Design Name: 
// Module Name:    display 
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
module display(
	input clk,
	input [3:0] p2_ones,
	input [2:0] p2_tens,
	input [3:0] p1_ones,
	input [2:0] p1_tens,
	output [3:0] an,
	output [7:0] seg
	);

	reg [1:0] counter = 0;
	reg [3:0] an_tmp;
	reg [7:0] disp_tmp;

	always @(posedge clk)
	begin
			if (counter >= 3)
				counter <= 0;
			else
				counter <= counter + 1;

			if (counter == 0)
				begin
					an_tmp <= 4'b1110;
					case(p2_ones)
						0: disp_tmp <= 8'b11000000;
						1: disp_tmp <= 8'b11111001;
						2: disp_tmp <= 8'b10100100;
						3: disp_tmp <= 8'b10110000;
						4: disp_tmp <= 8'b10011001;
						5: disp_tmp <= 8'b10010010;
						6: disp_tmp <= 8'b10000010;
						7: disp_tmp <= 8'b11111000;
						8: disp_tmp <= 8'b10000000;
						9: disp_tmp <= 8'b10010000;
						default: disp_tmp <= 8'b11000000;
					endcase
				end
			else if (counter == 1)
				begin
					an_tmp <= 4'b1101;
					case(p2_tens)
						0: disp_tmp <= 8'b11000000;
						1: disp_tmp <= 8'b11111001;
						2: disp_tmp <= 8'b10100100;
						3: disp_tmp <= 8'b10110000;
						4: disp_tmp <= 8'b10011001;
						5: disp_tmp <= 8'b10010010;
						6: disp_tmp <= 8'b10000010;
						7: disp_tmp <= 8'b11111000;
						8: disp_tmp <= 8'b10000000;
						9: disp_tmp <= 8'b10010000;
						default: disp_tmp <= 8'b11000000;
					endcase
				end
			else if (counter == 2)
				begin
					an_tmp <= 4'b1011;
					case(p1_ones)
						0: disp_tmp <= 8'b11000000;
						1: disp_tmp <= 8'b11111001;
						2: disp_tmp <= 8'b10100100;
						3: disp_tmp <= 8'b10110000;
						4: disp_tmp <= 8'b10011001;
						5: disp_tmp <= 8'b10010010;
						6: disp_tmp <= 8'b10000010;
						7: disp_tmp <= 8'b11111000;
						8: disp_tmp <= 8'b10000000;
						9: disp_tmp <= 8'b10010000;
						default: disp_tmp <= 8'b11000000;
					endcase
				end
			else
				begin
					an_tmp <= 4'b0111;
					case(p1_tens)
						0: disp_tmp <= 8'b11000000;
						1: disp_tmp <= 8'b11111001;
						2: disp_tmp <= 8'b10100100;
						3: disp_tmp <= 8'b10110000;
						4: disp_tmp <= 8'b10011001;
						5: disp_tmp <= 8'b10010010;
						6: disp_tmp <= 8'b10000010;
						7: disp_tmp <= 8'b11111000;
						8: disp_tmp <= 8'b10000000;
						9: disp_tmp <= 8'b10010000;
						default: disp_tmp <= 8'b11000000;
					endcase
				end
	end
	assign an = an_tmp;
	assign seg = disp_tmp;
endmodule