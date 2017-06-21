`include "dds.v"
module dac(
		input clk, 
		output reg [2:0] db_cos = 0,
		output reg [2:0] db_sin = 0, 
		output reg [2:0] dac1_db = 0, 
		
		output reg clk_dac1 = 0 , 
		output reg clk_dac2 = 0, 
		output reg data_valid = 0
		);  	

	
	
    reg [7:0] fr_dac_count = 8'd1;
	wire [7:0] dds_cos, dds_sin ;
	reg [7:0] dac_count = 0;

    always @ (posedge clk)
    begin
        //
			if (dac_count == 2*fr_dac_count)
					data_valid <= 1;
		//									
		//		if (dac_count == 8*fr_dac_count)
		//			db_cos <= 14'd2000; 
		//		else 
		//			db_cos <= 0; 
        //
                	if (dac_count <= 64 || dac_count >= 192) 
						begin 
							dac1_db <= $signed(dds_cos >> 4); 
							db_cos <=  $signed(dds_cos >> 4);						
						end 
                	else    
						begin 
							dac1_db <= $signed(dds_cos >> 4);
							db_cos <=  $signed(dds_cos >> 4);						
						end 

                if ($unsigned(dac_count) < 256 - fr_dac_count)
                    dac_count <= dac_count + fr_dac_count;
                else
                    dac_count <= 0;
         
    end

    dds dds_w (
      .in_value(dac_count),
      .sin_o(dds_sin),
      .cos_o(dds_cos),
      .clk(clk)
      );
	  endmodule 