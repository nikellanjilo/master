set_component build_sb_CCC_0_FCCC
create_clock -period 20 [ get_pins {CCC_INST/RCOSC_25_50MHZ} ]
create_generated_clock -multiply_by 12 -divide_by 6 -source [ get_pins {CCC_INST/RCOSC_25_50MHZ} ] [ get_pins {CCC_INST/GL0} ]
create_generated_clock -multiply_by 12 -divide_by 76 -source [ get_pins {CCC_INST/RCOSC_25_50MHZ} ] [ get_pins {CCC_INST/GL1} ]
create_generated_clock -multiply_by 12 -divide_by 38 -source [ get_pins {CCC_INST/RCOSC_25_50MHZ} ] [ get_pins {CCC_INST/GL2} ]
create_generated_clock -multiply_by 12 -divide_by 510 -source [ get_pins {CCC_INST/RCOSC_25_50MHZ} ] [ get_pins {CCC_INST/GL3} ]
