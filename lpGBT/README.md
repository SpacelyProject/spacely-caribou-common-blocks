# LPGBTFPGA

### Block Function
This block decodes transmissions from lpgbt-based transmitters over SFP+
((TBC))

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11  | Width in bits of the AXI memory addresses. Should be the same across the design. | 

### How to Instantiate
Instantiate lpgbtfpga_top.v as a Verilog block in a block design.

((What should high-speed pins be connected to?))

The output pins in the I/O data below provide the decoded data from the lpgbt at 40MHz. These should be connected to a second PL block which can process this data.

### Block Diagram

((To be added))


### AXI Memory Table 

| Register Name       | Reg Width          | R? | W?   | Function |
| -------------     | -------------------- | ---- | ---- | ------------------------------------ | 
| control       | {C_S_AXI_DATA_WIDTH}    | Y | Y | Control bits for the lpgbtfpga. control[0] = Uplink Reset. control[1] = MGT Rx Polarity |


### I/O Table 

| Signal Name       | Bit width + direction          | Clock   | I/O Function and connection guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ | 
| uplinkUserData_o        | 234b output    | clk40 (40MHz) | User data frame decoded from the lpgbt's transmission. Only valid when uplinkrdy_o is asserted. |

((This table needs to be completed))

Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.