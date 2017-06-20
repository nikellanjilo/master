device jtagport builtin
iice new {IICE} -type regular
iice controller -iice {IICE} none
iice sampler -iice {IICE} -depth 1024

signals add -iice {IICE} -silent -trigger -sample {/led_igloo_0/BW}\
{/led_igloo_0/BW_out}\
{/led_igloo_0/SENSE_CS_1}\
{/led_igloo_0/SENSE_DIN}\
{/led_igloo_0/SENSE_DOUT}\
{/led_igloo_0/clk_dac1}\
{/led_igloo_0/clk_dac2}\
{/led_igloo_0/dac1_db}\
{/led_igloo_0/dac_count}\
{/led_igloo_0/data_2adc}\
{/led_igloo_0/data_from_adc}\
{/led_igloo_0/dds_cos}\
{/led_igloo_0/dds_sin}\
{/led_igloo_0/fab_clk_8MHz}\
{/led_igloo_0/fpga_count}\
{/led_igloo_0/fpga_shift_2}\
{/led_igloo_0/fr_adc_count}\
{/led_igloo_0/fr_dac_count}\
{/led_igloo_0/freq}\
{/led_igloo_0/oclk_1}\
{/led_igloo_0/sdv_count}\
{/led_igloo_0/temp1}\
{/led_igloo_0/temp1_csn}\
{/led_igloo_0/temp2}\
{/led_igloo_0/temp2_csn}\
{/led_igloo_0/temp3}\
{/led_igloo_0/temp3_csn}\
{/led_igloo_0/temp_count}\
{/led_igloo_0/temp_count_data}\
{/led_igloo_0/temp_sck}\
{/led_igloo_0/temp_so}\
{/led_igloo_0/time_sens}
iice clock -iice {IICE} -edge positive {/led_igloo_0/fab_clk_16MHz}

