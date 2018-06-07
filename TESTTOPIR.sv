module TOPTESTIR(
            input logic IR,
			input logic reset,
			input logic clk,
                    

			output logic [3:0] dataF

);
     //logic clk; pointless without the clock
     logic read;
     logic error;
     logic done;
     logic FINISH;
     logic dataSM;	 
     logic [32:0] dataTR;
	 logic IDR;
	 logic [31:0] dataout;


     statemachine SM(
                .clk(clk),
				.reset(reset),
				.DONE(done),
				.read(read),
                .ERROR(error),				
				.FINISH(FINISH)
				.Idlereset(IDR)); 
		
		

       bitCounter BB(
	             .Idlereset(IDR),
		         .reset(reset),
                 .IR(IR),
				 .DONE(done));
        /*
		slowclock SC( 
			     .clk(clk),
				 .reset(reset),
				 .flip(sclk));
		*/
		
       SMCounter Count( 
		        .clk(clk),
                .IR(IR),
				.read(read),
				.data(dataSM),
				.error(error));
    

       shiftregIR Shifty( 
	              .IR(IR),
				  .reset(reset), 
				  .serial_data_in(dataSM),
				  .parallel_data_out(dataTR));
      
	  DataOutIR Reg(
	             .clk(clk),
				 .reset(reset),
				 .FINISH(FINISH),
				 .datain(dataTR),
				 .dataout(dataout));
	  
	  
	  
       irDecoder DECOIR(
		         .code(dataout),
				 .button(dataF));	  

/*
OSCH #("2.08") osc_int (	//not used in modelsim		
			.STDBY(1'b0),			
			.OSC(clk),				
			.SEDSTDBY());			

*/
endmodule