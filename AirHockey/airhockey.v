`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  Rose-Hulman Institute of Technology
// Engineer: Adam Michael
//
//	Term Project - Phase 1
//////////////////////////////////////////////////////////////////////////////////

// -----------------------------------------------
// top-level module
// -----------------------------------------------
module AirHockey(
    input InputClock,
    input btnl,
    input btnd,
	 input btnr,
    input btnu,
	 input btns,
    output [2:0] red,
    output [2:0] green,
    output [1:0] blue,
    output hsync,
    output vsync,
	 output [7:0] seg,
	 output [3:0] an
    );
	

	//reg clk50_int;
	//always @(posedge InputClock) begin
	//	clk50_int <= ~clk50_int;
	//end
	//Clock50MHz ClockUnit(InputClock, clk50_int);
	//wire clk50;
	//BUFG bufg_inst(clk50, clk50_int);
	
	wire btnl_v;
	wire btnd_v;
	wire btnr_v;
	wire btnu_v;
	wire clk50;
	wire clk400;
	clock clock_module(InputClock, clk50, clk400);
	reg clk25_int;
	always @(posedge clk50) begin
		clk25_int <= ~clk25_int;
	end
	wire clk25;
	BUFG bufg_inst(clk25, clk25_int);

	wire [9:0] xpos;
	wire [9:0] ypos;
	
	wire [3:0] p1_ones;
	wire [2:0] p1_tens;
	wire [3:0] p2_ones;
	wire [2:0] p2_tens;

	wire [1:0] count;
	vga_display vga_display_module(clk25, hsync, vsync, xpos, ypos);
	//debouncer debouncer_module(btnl, btnd, clk, btnl_v, btnd_v);
	game game_inst(clk25, xpos, ypos, btnl, btnd, btnr, btnu, btns, p1_ones, p1_tens, p2_ones, p2_tens, red, green, blue);
	display display_module(clk400, p2_ones, p2_tens, p1_ones, p1_tens, an, seg, count);
					
endmodule

