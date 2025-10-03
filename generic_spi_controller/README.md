# generic_spi_controller

### Block Function
(TODO: Please write a paragraph describing the intended function of this firmware block. Make sure you describe all the major sub-blocks with enough detail that someone could read the firmware and easily understand your intent.)

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 
|MEM_DEPTH | 64 | (TODO: What is the function of this parameter?) |


### How to Instantiate
generic_spi_controller_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.


### Block Diagram
(TODO: Create a useful block diagram which includes all the major sub-blocks of this firmware block.)

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|mem_write | 32 | Y | Y | (TODO: What is the function of this register?) |
|mem_write_ptr | 32 | Y | N | (TODO: What is the function of this register?) |
|mem_write_ptr_reset | 1 | N | Y | (TODO: What is the function of this register?) |
|mem_read | 32 | Y | N | (TODO: What is the function of this register?) |
|mem_read_ptr | 32 | Y | N | (TODO: What is the function of this register?) |
|mem_read_ptr_reset | 1 | N | Y | (TODO: What is the function of this register?) |
|transaction_count | 32 | Y | N | (TODO: What is the function of this register?) |
|spi_len | 32 | Y | Y | (TODO: What is the function of this register?) |
|spi_strb | 1 | N | Y | (TODO: What is the function of this register?) |
|status | 3 | Y | N | (TODO: What is the function of this register?) |
|param_MEM_DEPTH | 32 | Y | N | Yields the actual value of parameter MEM_DEPTH |



### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|axi_clk| 1b input | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|axi_resetn| 1b input | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|spi_clk| 1b input | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|poci| 1b input | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|pico| 1b output | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|cs_b| 1b output | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

mem_write,0x0,0xffffffff,True,True

mem_write_ptr,0x4,0xffffffff,True,False

mem_write_ptr_reset,0x8,0x1,False,True

mem_read,0xc,0xffffffff,True,False

mem_read_ptr,0x10,0xffffffff,True,False

mem_read_ptr_reset,0x14,0x1,False,True

transaction_count,0x18,0xffffffff,True,False

spi_len,0x1c,0xffffffff,True,True

spi_strb,0x20,0x1,False,True

status,0x24,0x7,True,False

param_MEM_DEPTH,0x28,0xffffffff,True,False



