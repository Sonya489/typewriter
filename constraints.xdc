
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]


set_property -dict { 
    PACKAGE_PIN N14 
    IOSTANDARD LVCMOS33 
} [get_ports clk]


set_property -dict { PACKAGE_PIN T13  IOSTANDARD LVCMOS33 } [get_ports {cols_in[0]}]
set_property -dict { PACKAGE_PIN R13  IOSTANDARD LVCMOS33 } [get_ports {cols_in[1]}]
set_property -dict { PACKAGE_PIN T14  IOSTANDARD LVCMOS33 } [get_ports {cols_in[2]}]
set_property -dict { PACKAGE_PIN P14  IOSTANDARD LVCMOS33 } [get_ports {cols_in[3]}]


set_property -dict { PACKAGE_PIN P10  IOSTANDARD LVCMOS33 } [get_ports {rows_out[0]}]
set_property -dict { PACKAGE_PIN R11  IOSTANDARD LVCMOS33 } [get_ports {rows_out[1]}]
set_property -dict { PACKAGE_PIN T12  IOSTANDARD LVCMOS33 } [get_ports {rows_out[2]}]
set_property -dict { PACKAGE_PIN R12  IOSTANDARD LVCMOS33 } [get_ports {rows_out[3]}]


set_property -dict { PACKAGE_PIN C1   IOSTANDARD LVCMOS33 } [get_ports {segs_out[0]}]   
set_property -dict { PACKAGE_PIN C2   IOSTANDARD LVCMOS33 } [get_ports {segs_out[1]}]  
set_property -dict { PACKAGE_PIN C3   IOSTANDARD LVCMOS33 } [get_ports {segs_out[2]}]  
set_property -dict { PACKAGE_PIN F2   IOSTANDARD LVCMOS33 } [get_ports {segs_out[3]}]   
set_property -dict { PACKAGE_PIN E1   IOSTANDARD LVCMOS33 } [get_ports {segs_out[4]}]   
set_property -dict { PACKAGE_PIN D3   IOSTANDARD LVCMOS33 } [get_ports {segs_out[5]}]   
set_property -dict { PACKAGE_PIN E2   IOSTANDARD LVCMOS33 } [get_ports {segs_out[6]}]   
set_property -dict { PACKAGE_PIN B1   IOSTANDARD LVCMOS33 } [get_ports {segs_out[7]}]   


set_property -dict { PACKAGE_PIN B6   IOSTANDARD LVCMOS33 } [get_ports {segs_out[8]}]   
set_property -dict { PACKAGE_PIN C7   IOSTANDARD LVCMOS33 } [get_ports {segs_out[9]}]   
set_property -dict { PACKAGE_PIN A8   IOSTANDARD LVCMOS33 } [get_ports {segs_out[10]}]  
set_property -dict { PACKAGE_PIN A3   IOSTANDARD LVCMOS33 } [get_ports {segs_out[11]}]  
set_property -dict { PACKAGE_PIN A4   IOSTANDARD LVCMOS33 } [get_ports {segs_out[12]}]  
set_property -dict { PACKAGE_PIN A5   IOSTANDARD LVCMOS33 } [get_ports {segs_out[13]}]  
set_property -dict { PACKAGE_PIN B5   IOSTANDARD LVCMOS33 } [get_ports {segs_out[14]}]  
set_property -dict { PACKAGE_PIN B7   IOSTANDARD LVCMOS33 } [get_ports {segs_out[15]}]  


set_property -dict { PACKAGE_PIN B11  IOSTANDARD LVCMOS33 } [get_ports {segs_out[16]}] 
set_property -dict { PACKAGE_PIN A12  IOSTANDARD LVCMOS33 } [get_ports {segs_out[17]}] 
set_property -dict { PACKAGE_PIN A13  IOSTANDARD LVCMOS33 } [get_ports {segs_out[18]}] 
set_property -dict { PACKAGE_PIN C8   IOSTANDARD LVCMOS33 } [get_ports {segs_out[19]}] 
set_property -dict { PACKAGE_PIN A9   IOSTANDARD LVCMOS33 } [get_ports {segs_out[20]}] 
set_property -dict { PACKAGE_PIN B10  IOSTANDARD LVCMOS33 } [get_ports {segs_out[21]}]
set_property -dict { PACKAGE_PIN A10  IOSTANDARD LVCMOS33 } [get_ports {segs_out[22]}] 
set_property -dict { PACKAGE_PIN B12  IOSTANDARD LVCMOS33 } [get_ports {segs_out[23]}] 


set_property -dict { PACKAGE_PIN C16  IOSTANDARD LVCMOS33 } [get_ports {segs_out[24]}] 
set_property -dict { PACKAGE_PIN D15  IOSTANDARD LVCMOS33 } [get_ports {segs_out[25]}] 
set_property -dict { PACKAGE_PIN E15  IOSTANDARD LVCMOS33 } [get_ports {segs_out[26]}] 
set_property -dict { PACKAGE_PIN A14  IOSTANDARD LVCMOS33 } [get_ports {segs_out[27]}] 
set_property -dict { PACKAGE_PIN B15  IOSTANDARD LVCMOS33 } [get_ports {segs_out[28]}] 
set_property -dict { PACKAGE_PIN B16  IOSTANDARD LVCMOS33 } [get_ports {segs_out[29]}] 
set_property -dict { PACKAGE_PIN A15  IOSTANDARD LVCMOS33 } [get_ports {segs_out[30]}] 
set_property -dict { PACKAGE_PIN D16  IOSTANDARD LVCMOS33 } [get_ports {segs_out[31]}] 
