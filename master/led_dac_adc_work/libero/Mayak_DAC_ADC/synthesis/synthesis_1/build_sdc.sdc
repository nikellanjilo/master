# Written by Synplify Pro version map201503actrcp1, Build 002R. Synopsys Run ID: sid1458056414 
# Top Level Design Parameters 

# Clocks 
create_clock -period 1000.000 -waveform {0.000 500.000} -name {ident_coreinst.comm_block_INST.dr2_tck} [get_pins {ident_coreinst/comm_block_INST/jtagi/jtag_clkint_prim:Y}] 
create_clock -period 1000.000 -waveform {0.000 500.000} -name {ident_coreinst.comm_block_INST.tck} [get_pins {ident_coreinst/comm_block_INST/jtagi/jtag_clkint_prim:Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {build_sb_CCC_0_FCCC|GL2_net_inferred_clock} [get_pins {build_sb_0/CCC_0/CCC_INST:GL2}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {build_sb_CCC_0_FCCC|GL1_net_inferred_clock} [get_pins {build_sb_0/CCC_0/CCC_INST:GL1}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_0 [list build_sb_CCC_0_FCCC|GL2_net_inferred_clock]
set Inferred_clkgroup_1 [list build_sb_CCC_0_FCCC|GL1_net_inferred_clock]
set identify_jtag_group1 [list ident_coreinst.comm_block_INST.tck \
                                 ident_coreinst.comm_block_INST.dr2_tck]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1
set_clock_groups -asynchronous -group $identify_jtag_group1


# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 

# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

