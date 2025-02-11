# test_data_source

### Block Function
This is a simple block which creates some test data on which can be read over the AXI bus, to verify AXI readout protocols. 

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 
|DATA_WIDTH | 32 | The width of the data which is generated. |


### How to Instantiate
test_data_source_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.


### Block Diagram
(TODO: Create a useful block diagram which includes all the major sub-blocks of this firmware block.)

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|control | 32 | Y | Y | Set the mode of the block by setting bits of this register. (Bit 0: data increments every AXI clock cycle. Bit 1: data increments at every rdStrobe. Bit 2: Clear data.) |
|data | DATA_WIDTH | Y | N | Data bus which may be read out over AXI. |
|param_DATA_WIDTH | 32 | Y | N | Yields the actual value of parameter DATA_WIDTH |



### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|axi_clk| 1b input | axi_clk | Connect to global AXI clock.|
|axi_resetn| 1b input | axi_clk | Connect to global AXI resetn.|



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

control,0x0,0xffffffff,True,True

data,0x4,0xffffffff,True,False

param_DATA_WIDTH,0x8,0xffffffff,True,False

**Note:** The following registers have parameterizable size: data.  In this memory map, 32b are reserved for each of these registers, the maximum allowed with a standard Spacely-Caribou AXI bus.

