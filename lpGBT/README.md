# LPGBTFPGA

### Block Function
This block decodes transmissions from lpgbt-based transmitters over SFP+
((TBC))

CONFIGURATION OPTIONS:
* This block operates at 10.24 Gbps (this is hard-coded in the file lpgbtfpga_10g24.vhd)
* Other configuration is set in lpgbtfpga_kcu105_10g24_top.vhd -- default is FEC5, with no components bypassed.

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11  | Width in bits of the AXI memory addresses. Should be the same across the design. | 

### How to Instantiate
Instantiate lpgbtfpga_top.v as a Verilog block in a block design.

Steps to include all source files in your Vivado project:
1. Include the "lpGBT" folder.
2. Include the file "lpGBT/mgt_ip/xlx_ku_mgt_10g24.vhd"
3. Include the folder "lpGBT/mgt_ip/hptd_ip_core"
4. Include the axi4lite interface folder.
5. Finally, include all the constraints in the "lpGBT/constraints" folder.

The output pins in the I/O table below provide the decoded data from the lpgbt at 40MHz. These should be connected to a second PL block which can process this data.

The input signals and high-speed clock pins are connected to the MGT PHY and external Si5341B oscillator chip. The exact connections are defined in the constraints file lpGBT/constraints/kcu105_physical.xdc


### Block Diagram

((To be added))


### AXI Memory Table 

| Register Name       | Reg Width          | R? | W?   | Function |
| -------------     | -------------------- | ---- | ---- | ------------------------------------ | 
| control       | {C_S_AXI_DATA_WIDTH}    | Y | Y | Control bits for the lpgbtfpga. control[0] = Uplink Reset. control[1] = MGT Rx Polarity |
| status       | {C_S_AXI_DATA_WIDTH}    | Y | Y | Status register for the lpgbtfpga. See bit mapping below. |

status[0] = uplinkrdy_o;
status[1] = uplinkFEC_o;
status[3:2] = uplinkEcData_o;
status[5:4] = uplinkIcData_o;
status[8:6] = uplinkPhase_o;
status[9] = mgt_rx_rdy;


### I/O Table 

| Signal Name       | Bit width + direction          | Clock   | I/O Function and connection guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ | 
| uplinkUserData_o        | 234b output    | clk40 (40MHz) | User data frame decoded from the lpgbt's transmission. Only valid when uplinkrdy_o is asserted. |

((This table needs to be completed))

Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

*BASE (Base IP Address)

uplinkRst,0x0,0x1,True,True

mgt_rxpolarity,0x0,0x2,True,True

status,0x1,0xffffffff,True,False