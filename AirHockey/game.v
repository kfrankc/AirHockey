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
				input btns_v,
				output [3:0] p1_ones,
				output [2:0] p1_tens,
				output [3:0] p2_ones,
				output [2:0] p2_tens,
				output [2:0] red,
				output [2:0] green,
				output [1:0] blue);
	
	// regs to keep track of score
	reg [3:0] p1_ones_tmp = 0;
	reg [2:0] p1_tens_tmp = 0;
	reg [3:0] p2_ones_tmp = 0;
	reg [2:0] p2_tens_tmp = 0;
	reg p1_score;
	reg p2_score;
	reg refresh;
	reg reset;
	reg straight;
	
	// paddle movement		
	reg [8:0] paddlePosition1, paddlePosition2, paddleTop1, paddleTop2;
	reg [2:0] quadAr, quadBr, quadCr, quadDr, quadEr;
	always @(posedge clk) quadAr <= {quadAr[1:0], btnd_v};
	always @(posedge clk) quadBr <= {quadBr[1:0], btnl_v};
	always @(posedge clk) quadCr <= {quadCr[1:0], btnr_v};
	always @(posedge clk) quadDr <= {quadDr[1:0], btnu_v};
	always @(posedge clk) quadEr <= {quadEr[1:0], btns_v};

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
	
	wire endOfFrame = (xpos == 0 && ypos == 480);
		
	always @(posedge clk) begin
		if(quadEr[1] | quadEr[2]) begin
			ballX <= 315;
			ballY <= 230;
			refresh <= 1;
		end
		
		else if(reset) begin
			ballX <= 315;
			ballY <= 230;
		end
		
		else if (endOfFrame) begin // update ball position at end of each frame
			refresh <= 0;
			if ((ballX == 0 && ballY == 0)) begin // cheesy reset handling, assumes initial value of 0
				ballX <= 315;
				ballY <= 230;
			end
			else begin
				if (ballXdir ^ bounceX) 
					ballX <= ballX + (2*10'd2);
				else 
					ballX <= ballX - (2*10'd2);
				if(~straight) begin
					if (ballYdir ^ bounceY)
						ballY <= ballY + (2*9'd2);
					else
						ballY <= ballY - (2*9'd2);
				end
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
			if (ball && (left || right || (paddle1 && ~ballXdir) || (paddle2 && ballXdir))) begin
				bounceX <= 1;
				straight <= 0;
			end
			if (ball && ((paddle1 && ballYdir && (quadAr[2] && (quadAr[2] == ~quadAr[1]))) || (paddle2 && ballYdir && (quadDr[2] && (quadDr[2] == ~quadDr[1])))))
				begin
					bounceY <= 1;
					bounceX <= 1;
					straight <= 0;
				end
			if (ball && ((paddle1 && ~ballYdir && (quadBr[2] && (quadBr[2] == ~quadBr[1]))) || (paddle2 && ~ballYdir && (quadCr[2] && (quadCr[2] == ~quadCr[1])))))
				begin
					bounceY <= 1;
					bounceX <= 1;
					straight <= 0;
				end
			if(ball && paddle1 && ((quadAr[1] | quadAr[2]) & (quadBr[1] | quadBr[2])))
				straight <= 1;
			if(ball && paddle2 && ((quadCr[1] | quadCr[2]) & (quadDr[1] | quadDr[2])))
				straight <= 1;
			if (ball && (top || bottom))
				bounceY <= 1;
			if (ball && (left || right))
				begin
					missTimer <= 15;
				end
			if (ball && left)
				p2_score <= 1;
			if (ball && right)
				p1_score <= 1;
			
		end
		else begin
			if ((ballX == 0 && ballY == 0) || refresh) begin // cheesy reset handling, assumes initial value of 0
				ballXdir <= 1;
				ballYdir <= 1;
				bounceX <= 0;
				bounceY <= 0;
				p1_score <= 0;
				p2_score <= 0;
				p1_ones_tmp <= 0;
				p2_ones_tmp <= 0;
				p1_tens_tmp <= 0;
				p2_tens_tmp <= 0;
				reset <= 0;
			end 
			else begin
				if(p1_score == 1) begin
					p1_score <= 0;
					p1_ones_tmp <= p1_ones_tmp + 1;
					if(p1_ones_tmp[3] && ~p1_ones_tmp[2] && ~p1_ones_tmp[1] && p1_ones_tmp[0]) begin
						p1_tens_tmp <= p1_tens_tmp + 1;
						reset <= 1;
					end
				end
				if(p2_score == 1) begin
					p2_score <= 0;
					p2_ones_tmp <= p2_ones_tmp + 1;
					if(p2_ones_tmp[3] && ~p2_ones_tmp[2] && ~p2_ones_tmp[1] && p2_ones_tmp[0]) begin
						p2_tens_tmp <= p2_tens_tmp + 1;
						reset <= 1;
					end
				end
				if (bounceX) begin
					ballXdir <= ~ballXdir;
				end
				if (bounceY)
					ballYdir <= ~ballYdir;			
				bounceX <= 0;
				bounceY <= 0;
				if (missTimer != 0)
					missTimer <= missTimer - 6'd1;
				if(reset && (missTimer == 0))
					missTimer <= 25;
			end
		end
	end
	assign p1_ones = p1_ones_tmp;
	assign p1_tens = p1_tens_tmp;
	assign p2_ones = p2_ones_tmp;
	assign p2_tens = p2_tens_tmp;
	
endmodule