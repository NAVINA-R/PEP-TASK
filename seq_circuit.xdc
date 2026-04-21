
## Clock (100 MHz example)
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.0 [get_ports clk]

## Reset
set_property PACKAGE_PIN V6 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

## Outputs
set_property PACKAGE_PIN U16 [get_ports {q[0]}]
set_property PACKAGE_PIN E19 [get_ports {q[1]}]
set_property PACKAGE_PIN U19 [get_ports {q[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports q[*]]
