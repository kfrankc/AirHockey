`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:25:48 05/02/2016 
// Design Name: 
// Module Name:    debouncer 
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
module debouncer(p1down, p1up, clk, p1down_valid, p1up_valid, p2down, p2up, p2down_valid);
	input clk;                  // 400Hz
	input p1down;
    input p2down;
	input p1up;
	input p2up;
	output p1down_valid;
    output p2down_valid;
	output p1up_valid;
	
    reg p1down_valid;
    reg p1up_valid;
    reg p2down_valid;
    reg p2up_valid;
	
   reg         clk_en;
   reg         clk_en_d;
   
   reg [2:0]   step_d_p1down;
   reg [2:0]   step_d_p1up;
       reg [2:0]   step_d_p2down;
       reg [2:0]   step_d_p2up;

	wire [17:0] clk_dv_inc;
	reg [16:0]  clk_dv;
	
	   // ===========================================================================
   // 763Hz timing signal for clock enable
   // ===========================================================================

   assign clk_dv_inc = clk_dv + 1;
   
   always @ (posedge clk)
       begin
          clk_dv   <= clk_dv_inc[16:0];
          clk_en   <= clk_dv_inc[17];
          clk_en_d <= clk_en;
       end
		 
	   // ===========================================================================
   // Instruction Stepping Control
   // ===========================================================================

	always @ (posedge clk)
		begin
		if (clk_en)
			 begin
				 step_d_p1down[2:0]  <= {p1down, step_d_p1down[2:1]};
				 step_d_p1up[2:0]  <= {p1up, step_d_p1up[2:1]};
                  step_d_p2down[2:0]  <= {p2down, step_d_p2down[2:1]};
                  step_d_p2up[2:0]  <= {p2up, step_d_p2up[2:1]};
			 end
		end
		 
	 always @ (posedge clk)
		begin
                 p1down_valid <= ~step_d_p1down[0] & step_d_p1down[1] & clk_en_d;
                 p1up_valid <= ~step_d_p1up[0] & step_d_p1up[1] & clk_en_d;
             p2down_valid <= ~step_d_p2down[0] & step_d_p2down[1] & clk_en_d;
             p2up_valid <= ~step_d_p2up[0] & step_d_p2up[1] & clk_en_d;
		end
		 
	 
endmodule