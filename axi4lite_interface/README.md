# AXI 4 Lite Slave Interface

### Block Function
This folder contains the source code for a parameterizable AXI 4 Lite Slave Interface, originally developed at DESY with a wrapper developed at FNAL.

This block supports {REGISTER_N}-many registers of width {C_S_AXI_DATA_WIDTH}. 

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be the same across the design. |
| C_S_AXI_ADDR_WIDTH        | 11  | Width in bits of the AXI memory addresses. Should be the same across the design. | 
| REGISTER_N     | 6 | Number of adddressable registers in the design. |

### How to Instantiate
This is NOT an independent reusable block. 

Instantiate axi4lite_interface_top.sv in one of your blocks, or use the code from one of the sub-blocks. I don't care, I'm just a README.

### Block Diagram

N/A, contains no sub-blocks


### AXI Memory Table 

N/A, this block is the AXI interface itself.

### I/O Table 

| Signal Name       | Bit width + direction          | Clock   | I/O Function and connection guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ | 
| reg_wrdout        | {C_S_AXI_DATA_WIDTH} output    | AXI Clk | On each clock tick, supplies write data from AXI bus. |
| axi_rddin         | {C_S_AXI_DATA_WIDTH} x {REGISTER_N} input     |   AXI Clk | All registers which may be read by the AXI bus. |
| reg_rdStrobe      | {REGISTER_N} output      |    AXI Clk |  The strobe signal for the register that is read this clock cycle is asserted by the AXI interface. |
| reg_wrByteStrobe  | {C_S_AXI_DATA_WIDTH} x {REGISTER_N} / 8 output     |   AXI Clk | The strobe signal for bytes that should be written from reg_wrdout this clock cycle is asserted by the AXI interface. |



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.