module fir #(
			parameter N_koef 		= 200 - 1, 	// Number of coefficients in table 
			parameter N_koef_bit 	= 16 - 1, 	// Coefficient bits 
			parameter N_dec 		= 8 - 1,	// Decimator factor 
			parameter K_block 		= 25, 		// Find N_koef/N_dec  
			parameter N_in 			= 3 - 1 	// Input data bits 
			)(
			input data_valid, 
			input clk_8x, 
			input clk_data, 
			input [N_in:0] data_i, 
			output reg [7:0] data_o, 
			output vd_o
				); 
	reg [7:0] cnt = 0; 
	reg [7:0] cnt_8x = 0; 
	reg [7:0] cnt_ram = 0; 
	reg [N_koef_bit + N_in + 1:0] fir = 0; 
	reg [N_koef + N_koef_bit + N_in + 1:0] sum_fir_reg = 0; 
	reg [3:0] cnt_dec = 0; 
	reg [N_in:0] data_in [N_koef:0]; 
	reg flag_Ndec = 0; 
	reg flag_Nbl = 0; 
	
	reg [2:0] state  = 3'b000; 
	reg [1:0] state_wr_ram = 2'b00; 
	reg [1:0] state_wr_ram_2 = 2'b00; 
	reg clk_data_p = 0; 
	
	reg [N_koef_bit: 0] coeff_ram [N_koef: 0] /*synthesis syn_romstyle = "block_rom"*/;
	initial $readmemh ("init/coeff.txt", coeff_ram); 
	
	assign vd_o = flag_Ndec && flag_Nbl; 
	
	always @ (posedge clk_data)
	begin
		if (data_valid)
			begin
				if (cnt < K_block)
					begin 
						if (cnt_dec < N_dec)
							begin 
								cnt_dec <= cnt_dec + 1; 
								flag_Ndec <= 0; 
							end 
						else 
							begin 
								cnt_dec <= 0;
								cnt <= cnt + 1; 
								flag_Ndec <= 1; 
							end 
					end 
				else 
					begin 
						flag_Nbl <= 1; 
						if (cnt_dec < N_dec)
							begin 
								cnt_dec <= cnt_dec + 1; 
								flag_Ndec <= 0; 
							end 
						else 
							begin 
								cnt_dec <= 0;
								cnt <= cnt + 1; 
								flag_Ndec <= 1; 
							end 
					end 
						
			end 
	end 
	
	always @ (posedge clk_data)
	begin 
		if (data_valid)
			begin 
				if (!flag_Nbl)
					begin 
						if (cnt_ram <= N_koef)
							begin 
								//data_in[cnt_ram] <= data_i; 
								cnt_ram <= cnt_ram + 1; 
							end 
						else 
							cnt_ram <= 0; 
					end 
				else 
					begin 
						if (cnt_ram <= N_dec)
							begin 
								//data_in[N_koef - N_dec + cnt_ram] <= data_i; 
								cnt_ram <= cnt_ram + 1; 
							end 
						else 
							cnt_ram <= 0; 
					end 
			
			end 
	end 
	
	always @ (posedge clk_8x)
	begin 
		if (state == 3'b001)
			begin 
				if (cnt_8x < N_koef - N_dec)
					data_in[cnt_8x] <= data_in[cnt_8x + N_dec + 1]; 
			end 
		else 
			begin 
				if (!flag_Nbl)
					begin 
						case (state_wr_ram)
						2'b00: 	begin 
									clk_data_p <= clk_data; 
									if (clk_data && clk_data_p==1)
									begin 
										data_in[cnt_ram] <= data_i; 
										state_wr_ram <= 2'b01; 
									end 
								end 
						2'b01:	if (clk_data==0)
										state_wr_ram <= 2'b00; 		
						endcase 
					end
				else 
					begin 
						case (state_wr_ram_2)
						2'b00 : if (clk_data==1)
									begin 
										data_in[N_koef - N_dec + cnt_ram] <= data_i;
										state_wr_ram_2 <= 2'b01; 
									end 
						2'b01 : if (clk_data==0)
									state_wr_ram_2 <= 2'b00; 
						endcase 
					end 
			end 
	end 
		
	always @ (posedge clk_8x)
	begin
		case (state)
			3'b000: begin 
						if (data_valid && flag_Nbl && flag_Ndec)
							state <= 3'b001; 
					end 
			
			3'b001:	begin 
						if (cnt_8x < N_koef)
							begin 
								fir <= $signed(coeff_ram[N_koef-cnt_8x])*$signed(data_in[cnt_8x]); 
								cnt_8x <= cnt_8x + 1; 
								sum_fir_reg <= $signed(sum_fir_reg) + $signed(fir); 
								
							end 
						else 
							begin 
								cnt_8x <= 0; 
								sum_fir_reg <= 0; 
								fir <= 0; 							
								data_o <= $signed(sum_fir_reg >> 16);
								state <= 3'b010; 		 	
							end 
					end 
			3'b010:	begin 
						if (flag_Ndec==0) 
							state <= 3'b000; 
					end 
		endcase 	
	end 			

	endmodule 