create_clock -period 10.000 -name pcie_refclk [get_pins refclk_ibuf/O]

set_property -dict {PACKAGE_PIN K6} [get_ports PCIE_REFCLK_P]
set_property -dict {PACKAGE_PIN K5} [get_ports PCIE_REFCLK_N]

set_property -dict {PACKAGE_PIN R4} [get_ports {PCI_EXP_RXP[3]}]
set_property -dict {PACKAGE_PIN R3} [get_ports {PCI_EXP_RXN[3]}]
set_property -dict {PACKAGE_PIN N4} [get_ports {PCI_EXP_RXP[2]}]
set_property -dict {PACKAGE_PIN N3} [get_ports {PCI_EXP_RXN[2]}]
set_property -dict {PACKAGE_PIN L4} [get_ports {PCI_EXP_RXP[1]}]
set_property -dict {PACKAGE_PIN L3} [get_ports {PCI_EXP_RXN[1]}]
set_property -dict {PACKAGE_PIN J4} [get_ports {PCI_EXP_RXP[0]}]
set_property -dict {PACKAGE_PIN J3} [get_ports {PCI_EXP_RXN[0]}]

set_property -dict {PACKAGE_PIN P2} [get_ports {PCI_EXP_TXP[3]}]
set_property -dict {PACKAGE_PIN P1} [get_ports {PCI_EXP_TXN[3]}]
set_property -dict {PACKAGE_PIN M2} [get_ports {PCI_EXP_TXP[2]}]
set_property -dict {PACKAGE_PIN M1} [get_ports {PCI_EXP_TXN[2]}]
set_property -dict {PACKAGE_PIN K2} [get_ports {PCI_EXP_TXP[1]}]
set_property -dict {PACKAGE_PIN K1} [get_ports {PCI_EXP_TXN[1]}]
set_property -dict {PACKAGE_PIN H2} [get_ports {PCI_EXP_TXP[0]}]
set_property -dict {PACKAGE_PIN H1} [get_ports {PCI_EXP_TXN[0]}]

set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS33} [get_ports PCIE_RESET_N]
set_property LOC IBUFDS_GTE2_X0Y1 [get_cells refclk_ibuf]
set_false_path -from [get_ports PCIE_RESET_N]

set_property -dict {PACKAGE_PIN J26 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[0]}]
set_property -dict {PACKAGE_PIN H26 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[1]}]
set_property -dict {PACKAGE_PIN G26 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[2]}]

set_property -dict { PACKAGE_PIN "J25"    IOSTANDARD LVCMOS33   SLEW FAST   PULLDOWN True} [get_ports { FAN_PWM }]  ;           # IO_L22N_T3_A04_D20_14         Sch = FAN_PWM 

set_property BITSTREAM.CONFIG.CONFIGRATE 16 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]