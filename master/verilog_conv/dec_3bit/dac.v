`include "dds.v"
module dac(
		input clk, 
		output reg [2:0] db_cos,		
		output reg data_valid = 0, 
		//
		output [2:0] db_cos_sim
		);  	

	//
	assign db_cos_sim = db_cos; 
	//
	
    reg  [7:0] fr_dac_count = 8'd1;
	reg  [7:0] dac_count = 0;
	wire [7:0] dds_cos, dds_sin ;
	

    always @ (posedge clk)
    begin
        if (dac_count <= 64 || dac_count >= 192) 
			begin 
				db_cos <=  $signed(dds_cos >> 4);	
				data_valid <= 1;
			end 
        else 
			db_cos <=  $signed(dds_cos >> 4); 

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