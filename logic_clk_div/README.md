# logic_clk_div

### Block Function
A logic-defined clock divider which is reprogrammable using AXI at runtime.

output_clk frequency = (master_clk frequency) / (1 + divider_cycles)

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 
|COUNTER_BITS | 32 | Number of bits in the internal counter of the clock divider |


### How to Instantiate
logic_clk_div_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.


### Block Diagram
(TODO: Create a useful block diagram which includes all the major sub-blocks of this firmware block.)

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|divider_cycles | 32 | Y | Y | Controls the output frequency. output_clk frequency = (master_clk frequency) / (1 + divider_cycles)  |



### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|master_clk| 1b input | master_clk | Input clock |
|output_clk| 1b output | maser_clk | Output clock |
|axi_resetn| 1b input | axi_clk | Connect to AXI_ARESETN |



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

divider_cycles,0x0,0xffffffff,True,True



