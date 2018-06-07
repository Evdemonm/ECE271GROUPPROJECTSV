module irDecoder(input  logic [32:0] code,
				 output logic [3:0] button);
always_comb
begin
	case(code)
	begin
		32'b1010_1000_0101_0111_1101_0000_0010_1111: button = 0;
		
		
		32'b1010_1000_0101_0111_1100_0000_0011_1111: button = 3;
		32'b1010_1000_0101_0111_0010_0000_1101_1111: button = 4;
		32'b1010_1000_0101_0111_1010_0000_0101_1111: button = 5;
		32'b1010_1000_0101_0111_0110_0000_1001_1111: button = 6;
		32'b1010_1000_0101_0111_1110_0000_0001_1111: button = 7;
		32'b1010_1000_0101_0111-0001_0000_1110_1111: button = 8;
		
		default: value = 15; 
	end
end
endmodule