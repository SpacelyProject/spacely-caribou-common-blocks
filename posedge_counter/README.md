# posedge_counter

### Block Function
This block is intended to assist firmware debug efforts. It counts posedges observed on its inputs, and can thereby be used to estimate the frequency of fast clocks which are inputs to the chip. 

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 


### How to Instantiate
posedge_counter_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.


### Block Diagram
(TODO: Create a useful block diagram which includes all the major sub-blocks of this firmware block.)

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|count_0 | 32 | Y | N | # of posedges observed on input signal 0 (if it exists) |
|count_1 | 32 | Y | N | # of posedges observed on input signal 0 (if it exists) |
|count_2 | 32 | Y | N | # of posedges observed on input signal 0 (if it exists) |
|count_3 | 32 | Y | N | # of posedges observed on input signal 0 (if it exists) |
|count_4 | 32 | Y | N | # of posedges observed on input signal 0 (if it exists) |
|count_5 | 32 | Y | N | # of posedges observed on input signal 0 (if it exists) |
|count_6 | 32 | Y | N | # of posedges observed on input signal 0 (if it exists) |
|count_7 | 32 | Y | N | # of posedges observed on input signal 0 (if it exists) |



### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|axi_resetn| 1b input | AXI | Connect to AXI resetn |
|input_signals| 8b input | N/A | Input signals to be measured. |



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

count_0,0x0,0xffffffff,True,False

count_1,0x4,0xffffffff,True,False

count_2,0x8,0xffffffff,True,False

count_3,0xc,0xffffffff,True,False

count_4,0x10,0xffffffff,True,False

count_5,0x14,0xffffffff,True,False

count_6,0x18,0xffffffff,True,False

count_7,0x1c,0xffffffff,True,False



