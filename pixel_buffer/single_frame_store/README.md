# single_frame_store

### Block Function
This is a straightforward block that is used to capture a single frame of data from a wide bus and store it for diagnostic readout over AXI. 

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 
|FRAME_WIDTH | 256 | Width of the data bus which will be captured. |


### How to Instantiate
single_frame_store_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.


### Block Diagram
(TODO: Create a useful block diagram which includes all the major sub-blocks of this firmware block.)

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|trigger | 1 | N | Y | Write to this register to trigger the capture of a single frame. |
|status | 32 | Y | N | This register gives the status of the capture state machine (bit 1 = capture_complete_axi, bit 0 = triggered). |
|frame_read | 32 | Y | N | Read this register repeatedly to read the captured data frame. A single read will return 32 bits, and advance the read pointer so that a subsequent read will return the next 32 bits. The final chunk of the data frame will be zero-filled to a length of 32 bits. After reading this chunk, the pointer will reset to the beginning of the frame. |
|param_FRAME_WIDTH | 32 | Y | N | Yields the actual value of parameter FRAME_WIDTH |



### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|frame_in| FRAME_WIDTHb input | frame_clk | This is a bus of width FRAME_WIDTH. Connect it to the bus you wish to capture.|
|frame_clk| 1b input | frame_clk | This is the clock which clocks the bus that you want to capture. |
|axi_clk| 1b input | axi_clk | Connect to the global AXI clock. |
|axi_resetn| 1b input | axi_clk | Connect to the global AXI clock. |



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

trigger,0x0,0x1,False,True

status,0x4,0xffffffff,True,False

frame_read,0x8,0xffffffff,True,False

param_FRAME_WIDTH,0xc,0xffffffff,True,False



