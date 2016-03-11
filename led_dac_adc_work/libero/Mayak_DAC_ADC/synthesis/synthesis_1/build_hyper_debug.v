// available hyper connections - for debug and ip models
// timestamp: 1457714381


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


wire [31:0] freq_0;
syn_hyper_connect freq_connect_0(freq_0);
defparam freq_connect_0.w = 32;
defparam freq_connect_0.tag = "led_igloo_0.freq";


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
