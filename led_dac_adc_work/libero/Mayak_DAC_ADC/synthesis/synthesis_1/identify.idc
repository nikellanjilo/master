device jtagport builtin
iice new {IICE} -type regular
iice controller -iice {IICE} none
iice sampler -iice {IICE} -depth 1024

signals add -iice {IICE} -silent -trigger -sample {/led_igloo_0/fab_clk_8MHz}\
{/led_igloo_0/freq}\
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

