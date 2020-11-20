# TCL File Generated by Component Editor 18.1
# Tue Nov 17 00:19:12 CET 2020
# DO NOT MODIFY


# 
# PWM "PWM" v1.0
#  2020.11.17.00:19:12
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module PWM
# 
set_module_property DESCRIPTION ""
set_module_property NAME PWM
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME PWM
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL pwm_avalon
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file pwm.vhd VHDL PATH ../../functions/FPGA/pwm.vhd
add_fileset_file PWM_avalon.vhd VHDL PATH ../../functions/SOPC/PWM_avalon.vhd TOP_LEVEL_FILE
add_fileset_file counter.vhd VHDL PATH ../../functions/FPGA/counter.vhd
add_fileset_file divider.vhd VHDL PATH ../../functions/FPGA/divider.vhd


# 
# parameters
# 
add_parameter freq_bus INTEGER 16
set_parameter_property freq_bus DEFAULT_VALUE 16
set_parameter_property freq_bus DISPLAY_NAME freq_bus
set_parameter_property freq_bus TYPE INTEGER
set_parameter_property freq_bus UNITS None
set_parameter_property freq_bus ALLOWED_RANGES -2147483648:2147483647
set_parameter_property freq_bus HDL_PARAMETER true
add_parameter duty_bus INTEGER 16
set_parameter_property duty_bus DEFAULT_VALUE 16
set_parameter_property duty_bus DISPLAY_NAME duty_bus
set_parameter_property duty_bus TYPE INTEGER
set_parameter_property duty_bus UNITS None
set_parameter_property duty_bus ALLOWED_RANGES -2147483648:2147483647
set_parameter_property duty_bus HDL_PARAMETER true


# 
# display items
# 


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock
set_interface_property avalon_slave_0 associatedReset reset
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 maximumPendingWriteTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 address address Input 2
add_interface_port avalon_slave_0 writedata writedata Input 32
add_interface_port avalon_slave_0 readdata readdata Output 32
add_interface_port avalon_slave_0 write_n write_n Input 1
add_interface_port avalon_slave_0 chipselect chipselect Input 1
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clock clk Input 1


# 
# connection point pwm_out
# 
add_interface pwm_out conduit end
set_interface_property pwm_out associatedClock clock
set_interface_property pwm_out associatedReset ""
set_interface_property pwm_out ENABLED true
set_interface_property pwm_out EXPORT_OF ""
set_interface_property pwm_out PORT_NAME_MAP ""
set_interface_property pwm_out CMSIS_SVD_VARIABLES ""
set_interface_property pwm_out SVD_ADDRESS_GROUP ""

add_interface_port pwm_out pwm_out new_signal Output 1
