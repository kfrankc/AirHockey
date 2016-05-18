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
module debouncer(btnl, btnd, clk, btnl_v, btnd_v);
	input clk;                  // 400Hz
	input btnd;
	input btnl;
	output btnd_v;
	output btnl_v;
	
    reg btnd_v;
    reg btnl_v;
	
   reg         clk_en;
   reg         clk_en_d;
   
   reg [2:0]   step_d_p1down;
   reg [2:0]   step_d_p1up;
//       reg [2:0]   step_d_p2down;
//       reg [2:0]   step_d_p2up;

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
				 step_d_p1down[2:0]  <= {btnd, step_d_p1down[2:1]};
				 step_d_p1up[2:0]  <= {btnl, step_d_p1up[2:1]};
//                  step_d_p2down[2:0]  <= {p2down, step_d_p2down[2:1]};
//                  step_d_p2up[2:0]  <= {p2up, step_d_p2up[2:1]};
			 end
		end
		 
	 always @ (posedge clk)
		begin
                 btnd_v <= ~step_d_p1down[0] & step_d_p1down[1] & clk_en_d;
                 btnl_v <= ~step_d_p1up[0] & step_d_p1up[1] & clk_en_d;
//             p2down_valid <= ~step_d_p2down[0] & step_d_p2down[1] & clk_en_d;
//             p2up_valid <= ~step_d_p2up[0] & step_d_p2up[1] & clk_en_d;
		end
		 
	 
endmodule