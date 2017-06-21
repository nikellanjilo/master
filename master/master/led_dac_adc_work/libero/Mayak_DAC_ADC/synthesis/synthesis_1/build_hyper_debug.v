// available hyper connections - for debug and ip models
// timestamp: 1458056414


`ifndef SYN_HYPER_CONNECT
`define SYN_HYPER_CONNECT 1
module syn_hyper_connect(out) /* synthesis syn_black_box=1 syn_noprune=1 */;
parameter w = 1;
parameter tag = "xxx";
parameter dflt = 0;
parameter mustconnect = 1'b1;
output [w-1:0] out;
endmodule
`endif

module build_hyper_debug(dummy);
input dummy; /* avoid compiler error for no ports */

wire fab_clk_8MHz_0;
syn_hyper_connect fab_clk_8MHz_connect_0(fab_clk_8MHz_0);
defparam fab_clk_8MHz_connect_0.tag = "led_igloo_0.fab_clk_8MHz";


wire fab_clk_16MHz_0;
syn_hyper_connect fab_clk_16MHz_connect_0(fab_clk_16MHz_0);
defparam fab_clk_16MHz_connect_0.tag = "led_igloo_0.fab_clk_16MHz";


wire temp_sck_0;
syn_hyper_connect temp_sck_connect_0(temp_sck_0);
defparam temp_sck_connect_0.tag = "led_igloo_0.temp_sck";


wire temp3_csn_0;
syn_hyper_connect temp3_csn_connect_0(temp3_csn_0);
defparam temp3_csn_connect_0.tag = "led_igloo_0.temp3_csn";


wire temp2_csn_0;
syn_hyper_connect temp2_csn_connect_0(temp2_csn_0);
defparam temp2_csn_connect_0.tag = "led_igloo_0.temp2_csn";


wire temp1_csn_0;
syn_hyper_connect temp1_csn_connect_0(temp1_csn_0);
defparam temp1_csn_connect_0.tag = "led_igloo_0.temp1_csn";


wire temp_so_0;
syn_hyper_connect temp_so_connect_0(temp_so_0);
defparam temp_so_connect_0.tag = "led_igloo_0.temp_so";


wire [14:0] BW_0;
syn_hyper_connect BW_connect_0(BW_0);
defparam BW_connect_0.w = 15;
defparam BW_connect_0.tag = "led_igloo_0.BW";


wire [14:0] BW_out_0;
syn_hyper_connect BW_out_connect_0(BW_out_0);
defparam BW_out_connect_0.w = 15;
defparam BW_out_connect_0.tag = "led_igloo_0.BW_out";


wire [8:0] dac1_db_0;
syn_hyper_connect dac1_db_connect_0(dac1_db_0);
defparam dac1_db_connect_0.w = 9;
defparam dac1_db_connect_0.tag = "led_igloo_0.dac1_db";


wire SENSE_CS_1_0;
syn_hyper_connect SENSE_CS_1_connect_0(SENSE_CS_1_0);
defparam SENSE_CS_1_connect_0.tag = "led_igloo_0.SENSE_CS_1";


wire [1:0] SENSE_DIN_0;
syn_hyper_connect SENSE_DIN_connect_0(SENSE_DIN_0);
defparam SENSE_DIN_connect_0.w = 2;
defparam SENSE_DIN_connect_0.tag = "led_igloo_0.SENSE_DIN";


wire [1:0] SENSE_DOUT_0;
syn_hyper_connect SENSE_DOUT_connect_0(SENSE_DOUT_0);
defparam SENSE_DOUT_connect_0.w = 2;
defparam SENSE_DOUT_connect_0.tag = "led_igloo_0.SENSE_DOUT";


wire oclk_1_0;
syn_hyper_connect oclk_1_connect_0(oclk_1_0);
defparam oclk_1_connect_0.tag = "led_igloo_0.oclk_1";


wire [7:0] fr_adc_count_0;
syn_hyper_connect fr_adc_count_connect_0(fr_adc_count_0);
defparam fr_adc_count_connect_0.w = 8;
defparam fr_adc_count_connect_0.tag = "led_igloo_0.fr_adc_count";


wire [31:0] freq_0;
syn_hyper_connect freq_connect_0(freq_0);
defparam freq_connect_0.w = 32;
defparam freq_connect_0.tag = "led_igloo_0.freq";


wire [8:0] dac_count_0;
syn_hyper_connect dac_count_connect_0(dac_count_0);
defparam dac_count_connect_0.w = 9;
defparam dac_count_connect_0.tag = "led_igloo_0.dac_count";


wire clk_dac1_0;
syn_hyper_connect clk_dac1_connect_0(clk_dac1_0);
defparam clk_dac1_connect_0.tag = "led_igloo_0.clk_dac1";


wire clk_dac2_0;
syn_hyper_connect clk_dac2_connect_0(clk_dac2_0);
defparam clk_dac2_connect_0.tag = "led_igloo_0.clk_dac2";


wire [71:0] data_2adc_0;
syn_hyper_connect data_2adc_connect_0(data_2adc_0);
defparam data_2adc_connect_0.w = 72;
defparam data_2adc_connect_0.tag = "led_igloo_0.data_2adc";


wire [107:0] data_from_adc_0;
syn_hyper_connect data_from_adc_connect_0(data_from_adc_0);
defparam data_from_adc_connect_0.w = 108;
defparam data_from_adc_connect_0.tag = "led_igloo_0.data_from_adc";


wire [1:0] sdv_count_0;
syn_hyper_connect sdv_count_connect_0(sdv_count_0);
defparam sdv_count_connect_0.w = 2;
defparam sdv_count_connect_0.tag = "led_igloo_0.sdv_count";


wire [7:0] fr_dac_count_0;
syn_hyper_connect fr_dac_count_connect_0(fr_dac_count_0);
defparam fr_dac_count_connect_0.w = 8;
defparam fr_dac_count_connect_0.tag = "led_igloo_0.fr_dac_count";


wire [7:0] dds_cos_0;
syn_hyper_connect dds_cos_connect_0(dds_cos_0);
defparam dds_cos_connect_0.w = 8;
defparam dds_cos_connect_0.tag = "led_igloo_0.dds_cos";


wire [7:0] dds_sin_0;
syn_hyper_connect dds_sin_connect_0(dds_sin_0);
defparam dds_sin_connect_0.w = 8;
defparam dds_sin_connect_0.tag = "led_igloo_0.dds_sin";


wire [14:0] fpga_count_0;
syn_hyper_connect fpga_count_connect_0(fpga_count_0);
defparam fpga_count_connect_0.w = 15;
defparam fpga_count_connect_0.tag = "led_igloo_0.fpga_count";


wire [14:0] fpga_shift_2_0;
syn_hyper_connect fpga_shift_2_connect_0(fpga_shift_2_0);
defparam fpga_shift_2_connect_0.w = 15;
defparam fpga_shift_2_connect_0.tag = "led_igloo_0.fpga_shift_2";


wire [31:0] temp_count_0;
syn_hyper_connect temp_count_connect_0(temp_count_0);
defparam temp_count_connect_0.w = 32;
defparam temp_count_connect_0.tag = "led_igloo_0.temp_count";


wire [4:0] temp_count_data_0;
syn_hyper_connect temp_count_data_connect_0(temp_count_data_0);
defparam temp_count_data_connect_0.w = 5;
defparam temp_count_data_connect_0.tag = "led_igloo_0.temp_count_data";


wire [15:0] temp1_0;
syn_hyper_connect temp1_connect_0(temp1_0);
defparam temp1_connect_0.w = 16;
defparam temp1_connect_0.tag = "led_igloo_0.temp1";


wire [15:0] temp2_0;
syn_hyper_connect temp2_connect_0(temp2_0);
defparam temp2_connect_0.w = 16;
defparam temp2_connect_0.tag = "led_igloo_0.temp2";


wire [15:0] temp3_0;
syn_hyper_connect temp3_connect_0(temp3_0);
defparam temp3_connect_0.w = 16;
defparam temp3_connect_0.tag = "led_igloo_0.temp3";


wire [31:0] time_sens_0;
syn_hyper_connect time_sens_connect_0(time_sens_0);
defparam time_sens_connect_0.w = 32;
defparam time_sens_connect_0.tag = "led_igloo_0.time_sens";


wire [7:0] ujtag_wrapper_uireg_0;
syn_hyper_connect ujtag_wrapper_uireg_connect_0(ujtag_wrapper_uireg_0);
defparam ujtag_wrapper_uireg_connect_0.w = 8;
defparam ujtag_wrapper_uireg_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_uireg";


wire ujtag_wrapper_urstb_0;
syn_hyper_connect ujtag_wrapper_urstb_connect_0(ujtag_wrapper_urstb_0);
defparam ujtag_wrapper_urstb_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_urstb";


wire ujtag_wrapper_udrupd_0;
syn_hyper_connect ujtag_wrapper_udrupd_connect_0(ujtag_wrapper_udrupd_0);
defparam ujtag_wrapper_udrupd_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrupd";


wire ujtag_wrapper_udrck_0;
syn_hyper_connect ujtag_wrapper_udrck_connect_0(ujtag_wrapper_udrck_0);
defparam ujtag_wrapper_udrck_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrck";


wire ujtag_wrapper_udrcap_0;
syn_hyper_connect ujtag_wrapper_udrcap_connect_0(ujtag_wrapper_udrcap_0);
defparam ujtag_wrapper_udrcap_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrcap";


wire ujtag_wrapper_udrsh_0;
syn_hyper_connect ujtag_wrapper_udrsh_connect_0(ujtag_wrapper_udrsh_0);
defparam ujtag_wrapper_udrsh_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrsh";


wire ujtag_wrapper_utdi_0;
syn_hyper_connect ujtag_wrapper_utdi_connect_0(ujtag_wrapper_utdi_0);
defparam ujtag_wrapper_utdi_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_utdi";

endmodule
