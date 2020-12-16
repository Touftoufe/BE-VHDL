transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/SofianeAOUCI/Desktop/BE-VHDL/BE/functions/FPGA/counter.vhd}
vcom -93 -work work {C:/Users/SofianeAOUCI/Desktop/BE-VHDL/BE/functions/FPGA/UART_RX.vhd}
vcom -93 -work work {C:/Users/SofianeAOUCI/Desktop/BE-VHDL/BE/functions/FPGA/NMEA_RX.vhd}

vcom -93 -work work {C:/Users/SofianeAOUCI/Desktop/BE-VHDL/BE/Functions_dev/../Simulation_files/simu_tb_NMEA_RX.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  simu_tb_NMEA_RX

add wave *
view structure
view signals
run -all
