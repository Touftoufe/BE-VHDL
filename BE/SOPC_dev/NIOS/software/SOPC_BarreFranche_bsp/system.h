/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'NIOS_MCU' in SOPC Builder design 'SoC'
 * SOPC Builder design path: C:/Users/SofianeAOUCI/Desktop/BE-VHDL/BE/SOPC_dev/Qsys/SoC.sopcinfo
 *
 * Generated: Thu Dec 17 05:08:41 CET 2020
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * Anemometer configuration
 *
 */

#define ALT_MODULE_CLASS_Anemometer Anemometer
#define ANEMOMETER_BASE 0x210c8
#define ANEMOMETER_IRQ -1
#define ANEMOMETER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ANEMOMETER_NAME "/dev/Anemometer"
#define ANEMOMETER_SPAN 8
#define ANEMOMETER_TYPE "Anemometer"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00020820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x12
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00010020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x12
#define ALT_CPU_NAME "NIOS_MCU"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00010000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00020820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x12
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00010020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x12
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00010000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_NIOS2_GEN2
#define __ANEMOMETER
#define __NMEA_RX
#define __NMEA_TX
#define __PWM


/*
 * KEYs configuration
 *
 */

#define ALT_MODULE_CLASS_KEYs altera_avalon_pio
#define KEYS_BASE 0x21090
#define KEYS_BIT_CLEARING_EDGE_REGISTER 0
#define KEYS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEYS_CAPTURE 0
#define KEYS_DATA_WIDTH 2
#define KEYS_DO_TEST_BENCH_WIRING 0
#define KEYS_DRIVEN_SIM_VALUE 0
#define KEYS_EDGE_TYPE "NONE"
#define KEYS_FREQ 50000000
#define KEYS_HAS_IN 1
#define KEYS_HAS_OUT 0
#define KEYS_HAS_TRI 0
#define KEYS_IRQ -1
#define KEYS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KEYS_IRQ_TYPE "NONE"
#define KEYS_NAME "/dev/KEYs"
#define KEYS_RESET_VALUE 0
#define KEYS_SPAN 16
#define KEYS_TYPE "altera_avalon_pio"


/*
 * LEDs configuration
 *
 */

#define ALT_MODULE_CLASS_LEDs altera_avalon_pio
#define LEDS_BASE 0x210a0
#define LEDS_BIT_CLEARING_EDGE_REGISTER 0
#define LEDS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LEDS_CAPTURE 0
#define LEDS_DATA_WIDTH 8
#define LEDS_DO_TEST_BENCH_WIRING 0
#define LEDS_DRIVEN_SIM_VALUE 0
#define LEDS_EDGE_TYPE "NONE"
#define LEDS_FREQ 50000000
#define LEDS_HAS_IN 0
#define LEDS_HAS_OUT 1
#define LEDS_HAS_TRI 0
#define LEDS_IRQ -1
#define LEDS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LEDS_IRQ_TYPE "NONE"
#define LEDS_NAME "/dev/LEDs"
#define LEDS_RESET_VALUE 0
#define LEDS_SPAN 16
#define LEDS_TYPE "altera_avalon_pio"


/*
 * NMEA_RX_0 configuration
 *
 */

#define ALT_MODULE_CLASS_NMEA_RX_0 NMEA_RX
#define NMEA_RX_0_BASE 0x21040
#define NMEA_RX_0_IRQ -1
#define NMEA_RX_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define NMEA_RX_0_NAME "/dev/NMEA_RX_0"
#define NMEA_RX_0_SPAN 32
#define NMEA_RX_0_TYPE "NMEA_RX"


/*
 * NMEA_TX_0 configuration
 *
 */

#define ALT_MODULE_CLASS_NMEA_TX_0 NMEA_TX
#define NMEA_TX_0_BASE 0x21060
#define NMEA_TX_0_IRQ -1
#define NMEA_TX_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define NMEA_TX_0_NAME "/dev/NMEA_TX_0"
#define NMEA_TX_0_SPAN 32
#define NMEA_TX_0_TYPE "NMEA_TX"


/*
 * PWM configuration
 *
 */

#define ALT_MODULE_CLASS_PWM PWM
#define PWM_BASE 0x210b0
#define PWM_IRQ -1
#define PWM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PWM_NAME "/dev/PWM"
#define PWM_SPAN 16
#define PWM_TYPE "PWM"


/*
 * SRAM configuration
 *
 */

#define ALT_MODULE_CLASS_SRAM altera_avalon_onchip_memory2
#define SRAM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define SRAM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define SRAM_BASE 0x10000
#define SRAM_CONTENTS_INFO ""
#define SRAM_DUAL_PORT 0
#define SRAM_GUI_RAM_BLOCK_TYPE "AUTO"
#define SRAM_INIT_CONTENTS_FILE "SoC_SRAM"
#define SRAM_INIT_MEM_CONTENT 1
#define SRAM_INSTANCE_ID "NONE"
#define SRAM_IRQ -1
#define SRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SRAM_NAME "/dev/SRAM"
#define SRAM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define SRAM_RAM_BLOCK_TYPE "AUTO"
#define SRAM_READ_DURING_WRITE_MODE "DONT_CARE"
#define SRAM_SINGLE_CLOCK_OP 0
#define SRAM_SIZE_MULTIPLE 1
#define SRAM_SIZE_VALUE 40960
#define SRAM_SPAN 40960
#define SRAM_TYPE "altera_avalon_onchip_memory2"
#define SRAM_WRITABLE 1


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag"
#define ALT_STDERR_BASE 0x210d0
#define ALT_STDERR_DEV jtag
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag"
#define ALT_STDIN_BASE 0x210d0
#define ALT_STDIN_DEV jtag
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag"
#define ALT_STDOUT_BASE 0x210d0
#define ALT_STDOUT_DEV jtag
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "SoC"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 4
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag configuration
 *
 */

#define ALT_MODULE_CLASS_jtag altera_avalon_jtag_uart
#define JTAG_BASE 0x210d0
#define JTAG_IRQ 8
#define JTAG_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_NAME "/dev/jtag"
#define JTAG_READ_DEPTH 64
#define JTAG_READ_THRESHOLD 8
#define JTAG_SPAN 8
#define JTAG_TYPE "altera_avalon_jtag_uart"
#define JTAG_WRITE_DEPTH 64
#define JTAG_WRITE_THRESHOLD 8

#endif /* __SYSTEM_H_ */
