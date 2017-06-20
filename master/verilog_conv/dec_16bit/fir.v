module fir_krn #(
			parameter N_koef 	  = 160 - 1, // Number of coefficients in table 
			parameter N_koef_bit  = 16 - 1, // Coefficient bits 
			parameter N_dec 	  = 8-1, // Decimator factor 
			parameter K_block 	  = 20 // Find N_koef/N_dec  
			)(
			input 	data_valid, 
			input 	clk_8x, 		
			input 	clk_data, 
			input 	[13:0] data_i, 
			output reg [13:0] data_o, 
		
				); 
	reg [10:0] cnt = 0; 
	reg [10:0] cnt_8x = 0; 
	reg [29:0] fir = 0; 
	reg [N_koef + 29:0] sum_fir = 0; 
	reg [N_koef + 29:0] sum_fir_reg = 0; 
	reg [7:0] cnt_dec = 0; 
	reg [13:0] data_in [N_koef:0]; 
	
	
	reg [N_koef_bit: 0] coeff_ram [N_koef: 0] /*synthesis syn_romstyle = "block_rom"*/;
	initial $readmemh ("init/coeff.txt", coeff_ram); 
	
	
	always @ (posedge clk_data)
	begin
		if (data_valid)
			begin
				if (cnt < N_koef)
					begin 
						data_in[cnt] <= data_i;
						cnt 		 <= cnt + 1; 
					end 
				else 
					begin 
						cnt <= 0; 
					end 
			end 
	end 
	
	always @ (posedge clk_8x)
		begin
			if (data_valid)
				begin
					if (cnt_8x < N_koef)
						begin 
							fir 			<= 	$unsigned(coeff_ram[N_koef-cnt_8x])*$signed(data_in[cnt_8x]); 
							cnt_8x  		<= 	cnt_8x + 1; 
							sum_fir_reg 	<= 	$signed(sum_fir_reg) + $signed(fir); 
						end 
					else 
						begin 
							cnt_8x 		<= 0; 
							sum_fir_reg <= 0; 
							sum_fir	    <= sum_fir_reg; 
							fir 		<= 0; 
							if ( cnt_dec < N_dec)
								cnt_dec <= cnt_dec + 1; 
							else 
								begin 
									data_o  <= $signed(sum_fir >> 22);
									cnt_dec <= 0; 	
								end 
						end 
				end 
		end 			

	
	
	endmodule 