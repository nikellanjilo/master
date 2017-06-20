project -load C:/Projects/Verilog/led_IGLOO/led_dac_adc_qudr/led_dac_adc_work/libero/Mayak_DAC_ADC/synthesis/build_syn.prj
puts "Generating SRS instrumenttion to file C:\Projects\Verilog\led_IGLOO\led_dac_adc_qudr\led_dac_adc_work\libero\Mayak_DAC_ADC\synthesis\synthesis_1\instr_sources\syn_dics.v"
 if { [catch {write instrumentation} err] } {
    puts stderr "write instrumentation failed $err"
    exit 9
}
