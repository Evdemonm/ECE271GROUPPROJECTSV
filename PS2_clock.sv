module PS2_clock(
	input logic clk_i,		
	input logic reset_n,	
	
	output logic clk_o);
		
		logic [13:0] count;	
		
		always_ff @ (posedge clk_i, negedge reset_n)			
			begin
				count <= count + 1;
				if(!reset_n)
					begin
						clk_o <= 0;
						count <= 0;
					end
				else
					if(count >= 160) 
						begin		
							clk_o <= ~clk_o;	//Flip slow clock
							count <= 0;			//Reset the counter
						end
			end
endmodule
