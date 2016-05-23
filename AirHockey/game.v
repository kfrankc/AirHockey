// -----------------------------------------------
// updates the ball and paddle positions, and
// determines the output video image
// -----------------------------------------------
module game(input clk,
				input [9:0] xpos,
				input [9:0] ypos,
				input btnl_v,
				input btnd_v,
				input btnr_v,
				input btnu_v,
				output [2:0] red,
				output [2:0] green,
				output [1:0] blue);
		
	// paddle movement		
	reg [8:0] paddlePosition1, paddlePosition2, paddleTop1, paddleTop2;
	reg [2:0] quadAr, quadBr, quadCr, quadDr;
	always @(posedge clk) quadAr <= {quadAr[1:0], btnd_v};
	always @(posedge clk) quadBr <= {quadBr[1:0], btnl_v};
	always @(posedge clk) quadCr <= {quadCr[1:0], btnr_v};
	always @(posedge clk) quadDr <= {quadDr[1:0], btnu_v};

	always @(posedge clk)
	if(quadAr[2] | quadAr[1] | quadBr[2] | quadBr[1] | quadCr[2] | quadCr[1] | quadDr[2] | quadDr[1])
	begin
		if(quadAr[2] == ~quadAr[1]) begin
			if(paddlePosition1 < 400) begin        // make sure the value doesn't overflow
				paddlePosition1 <= paddlePosition1 + 2*(9'd4);
				paddleTop1 <= paddleTop1 + 2*(9'd4);
			end
		end
		else if (quadBr[2] == ~quadBr[1]) begin
			if(paddlePosition1 > 0) begin        // make sure the value doesn't underflow
				paddlePosition1 <= paddlePosition1 - 2*(9'd4);
				paddleTop1 <= paddleTop1 - 2*(9'd4);
			end
		end
		if(quadCr[2] == ~quadCr[1]) begin
			if(paddlePosition2 < 400) begin        // make sure the value doesn't overflow
				paddlePosition2 <= paddlePosition2 + 2*(9'd4);
				paddleTop2 <= paddleTop2 + 2*(9'd4);
			end
		end
		else if (quadDr[2] == ~quadDr[1]) begin
			if(paddlePosition2 > 0) begin        // make sure the value doesn't underflow
				paddlePosition2 <= paddlePosition2 - 2*(9'd4);
				paddleTop2 <= paddleTop2 - 2*(9'd4);
			end
		end
	end
			
	// ball movement	
	reg [9:0] ballX;
	reg [8:0] ballY;
	reg ballXdir, ballYdir;
	reg bounceX, bounceY;
	reg straight;
	
	wire endOfFrame = (xpos == 0 && ypos == 480);
		
	always @(posedge clk) begin
		if (endOfFrame) begin // update ball position at end of each frame
			if (ballX == 0 && ballY == 0) begin // cheesy reset handling, assumes initial value of 0
				ballX <= 480;
				ballY <= 300;
			end
			else begin
				if (ballXdir ^ bounceX) 
					ballX <= ballX + 10'd2;
				else 
					ballX <= ballX - 10'd2;
				if (ballYdir ^ bounceY)
					ballY <= ballY + 9'd2;
				else
					ballY <= ballY - 9'd2;
			end
		end	
	end		
			
	// pixel color	
	reg [5:0] missTimer;	
	wire visible = (xpos < 640 && ypos < 480);
	wire top = (visible && ypos <= 3);
	wire bottom = (visible && ypos >= 476);
	wire left = (visible && xpos <= 3);
	wire right = (visible && xpos >= 636);
	wire border = (visible && (left || right || top || bottom));
	wire paddle1 = (xpos >= 33 && xpos <= 58 && ypos >= paddlePosition1+4 && ypos <= paddlePosition1+64);
	wire paddle2 = (xpos >= 581 && xpos <= 606 && ypos >= paddlePosition2+4 && ypos <= paddlePosition2+64);
	wire paddletop1 = (xpos >= 10 && xpos <= 33 && ypos >= paddlePosition1+24 && ypos <= paddlePosition1+44);
	wire paddletop2 = (xpos >= 606 && xpos <= 629 && ypos >= paddlePosition2+24 && ypos <= paddlePosition2+44);
	wire ball = (xpos >= ballX && xpos <= ballX+15 && ypos >= ballY && ypos <= ballY+15);
	wire background = (visible && !(border || paddle1 || paddle2 || paddletop1 || paddletop2 || ball));
	wire checkerboard = (xpos[4] ^ ypos[4]);
	wire missed = visible && missTimer != 0;

	//assign red   = { missed || border || paddle1 || paddle2, paddle1 || paddle2, paddle1 || paddle2};
	//assign green = { !missed && (border || paddle1 || paddle2 || ball), ball, ball};
	//assign blue  = { !missed && (border || ball), background && checkerboard}; 
			
	assign red   = { missed || border || ball, missed || ball, missed || ball || paddle1 || paddle2 || paddletop1 || paddletop2};
	assign green = { !missed && background, background, background || ball};
	assign blue  = { !missed && (background || paddle1 || paddle2 || paddletop1 || paddletop2), missed && (paddle1 || paddle2 || paddletop1 || paddletop2)};		
			
	// ball collision	
	always @(posedge clk) begin
		if (!endOfFrame) begin
			if (ball && (left || right || (paddle1 && ~ballXdir) || (paddle2 && ballXdir)))
				bounceX <= 1;
			if (ball && ((paddle1 && ballYdir && (quadAr[2] && (quadAr[2] == ~quadAr[1]))) || (paddle2 && ballYdir && (quadDr[2] && (quadDr[2] == ~quadDr[1])))))
				begin
					bounceY <= 1;
					bounceX <= 1;
				end
			if (ball && ((paddle1 && ~ballYdir && (quadBr[2] && (quadBr[2] == ~quadBr[1]))) || (paddle2 && ~ballYdir && (quadCr[2] && (quadCr[2] == ~quadCr[1])))))
				begin
					bounceY <= 1;
					bounceX <= 1;
				end
			if (ball && (top || bottom))
				bounceY <= 1;
			if (ball && (left || right))
				missTimer <= 63;

		end
		else begin
			if (ballX == 0 && ballY == 0) begin // cheesy reset handling, assumes initial value of 0
				ballXdir <= 1;
				ballYdir <= 1;
				bounceX <= 0;
				bounceY <= 0;
			end 
			else begin			
				if (bounceX)
					ballXdir <= ~ballXdir;
				if (bounceY)
					ballYdir <= ~ballYdir;			
				bounceX <= 0;
				bounceY <= 0;
				if (missTimer != 0)
					missTimer <= missTimer - 6'd1;
			end
		end
	end
		
endmodule