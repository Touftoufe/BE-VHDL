transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/SofianeAOUCI/Desktop/BE_VHDL_AOUCI_BONHOURE/BE/functions/FPGA/counter.vhd}
vcom -93 -work work {C:/Users/SofianeAOUCI/Desktop/BE_VHDL_AOUCI_BONHOURE/BE/functions/FPGA/divider.vhd}
vcom -93 -work work {C:/Users/SofianeAOUCI/Desktop/BE_VHDL_AOUCI_BONHOURE/BE/functions/FPGA/UART_TX.vhd}
vcom -93 -work work {C:/Users/SofianeAOUCI/Desktop/BE_VHDL_AOUCI_BONHOURE/BE/test_benches/tb_UART_TX.vhd}

vcom -93 -work work {C:/Users/SofianeAOUCI/Desktop/BE_VHDL_AOUCI_BONHOURE/BE/Functions_dev/../Simulation_files/simu_tb_UART_TX.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  SIMU_TB_UART_TX

add wave *
view structure
view signals
run 100 ms
