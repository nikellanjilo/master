quietly set ACTELLIBNAME IGLOO2
quietly set PROJECT_DIR "C:/Projects/Verilog/led_IGLOO/led_dac_adc_work/libero/Mayak_DAC_ADC"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap IGLOO2 "C:/Microsemi/Libero_v11.6/Designer/lib/modelsim/precompiled/vlog/smartfusion2"
vmap SmartFusion2 "C:/Microsemi/Libero_v11.6/Designer/lib/modelsim/precompiled/vlog/smartfusion2"

vlog  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreResetP/7.0.104/rtl/vlog/core/coreresetp_pcie_hotreset.v"
vlog  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreResetP/7.0.104/rtl/vlog/core/coreresetp.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/build_sb/CCC_0/build_sb_CCC_0_FCCC.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/build_sb/FABOSC_0/build_sb_FABOSC_0_OSC.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/build_sb_HPMS/build_sb_HPMS.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/build_sb/build_sb.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/led.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/build/build.v"
vlog "+incdir+${PROJECT_DIR}/component/work/smart_tb"  -work presynth "${PROJECT_DIR}/component/work/smart_tb/smart_tb.v"

vsim -L IGLOO2 -L presynth  -t 1fs presynth.smart_tb
add wave /smart_tb/*
run 1000ns
