// -----------------------------------------------
// 640x480 @ 60Hz, from a 25MHz input clock
// line duration is slightly longer than spec, but 
// number of lines is fewer to compensate
// -----------------------------------------------
module vga_display(input clk,
						 output hsyncOut,
						 output vsyncOut,
						 output [9:0] xposOut,
						 output [9:0] yposOut);

	reg [9:0] xpos;
	reg [9:0] ypos;

	wire endline = (xpos == 799);

	always @(posedge clk) begin
		if (endline)
		  xpos <= 0;
		else
		  xpos <= xpos + 10'd1;
	end

	always @(posedge clk) begin
		if (endline) begin
			if (ypos == 520)
				ypos <= 0;
			else
				ypos <= ypos + 10'd1;	
		end
	end
		 
	reg hsync, vsync;
	always @(posedge clk) begin
		hsync <= ~(xpos > 664 && xpos <= 759);  // active for 96 clocks
		vsync <= ~(ypos == 490 || ypos == 491);   // active for lines 490 and 491
	end

	assign hsyncOut = hsync;
	assign vsyncOut = vsync;
	assign xposOut = xpos;
	assign yposOut = ypos;

endmodule