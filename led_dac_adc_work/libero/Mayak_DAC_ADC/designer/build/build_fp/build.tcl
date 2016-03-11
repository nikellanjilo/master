open_project -project {C:\Projects\Verilog\led_IGLOO\led_dac_adc_work\libero\Mayak_DAC_ADC\designer\build\build_fp\build.pro}
set_programming_file -name {M2GL050T} -file {C:\Projects\Verilog\led_IGLOO\led_dac_adc_work\libero\Mayak_DAC_ADC\designer\build\build.ipd}
enable_device -name {M2GL050T} -enable 1
set_programming_action -action {PROGRAM} -name {M2GL050T} 
run_selected_actions
set_programming_file -name {M2GL050T} -no_file
save_project
close_project
