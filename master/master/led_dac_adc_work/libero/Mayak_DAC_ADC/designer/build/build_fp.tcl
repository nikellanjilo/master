new_project \
         -name {build} \
         -location {C:\Projects\Verilog\led_IGLOO\led_dac_adc\libero\Mayak_DAC_ADC\designer\build\build_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2GL050T} \
         -name {M2GL050T}
enable_device \
         -name {M2GL050T} \
         -enable {TRUE}
save_project
close_project
