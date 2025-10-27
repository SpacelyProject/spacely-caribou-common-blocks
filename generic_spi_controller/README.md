# generic_spi_controller

## Block Function
This block allows simple reads and writes to the Fermilab generic_spi_peripheral ASIC IP.

Operation (Read):

Operation (Write):

### Considerations for Timing Closure
TBA

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 
|MEM_DEPTH | 64 | The number of 32-bit words in the memory of the controller. The longest SPI write/read you can perform with this IP in one shot is MEM_DEPTH*32 |


### How to Instantiate
generic_spi_controller_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|mem_write | 32 | Y | Y | Use this register to write your SPI command to the controller's  memory in chunks of 32 bits. |
|mem_write_ptr | 32 | Y | N | This read-only register tells you which byte of memory is going to be written next time you write a word to mem_write. |
|mem_write_ptr_reset | 1 | N | Y | Write "1" to this register to reset mem_write_ptr to zero. |
|mem_read | 32 | Y | N | Use this register to read data from SPI in chunks of 32 bits. |
|mem_read_ptr | 32 | Y | N | This read-only register tells you which byte of memory is going to be read on the next read of mem_read. |
|mem_read_ptr_reset | 1 | N | Y | Write "1" to this register to reset mem_read_ptr to zero. |
|transaction_count | 32 | Y | N | The total number of SPI transactions that have been run since startup. |
|spi_len | 32 | Y | Y | The length of the desired SPI transaction in bits. |
|spi_strb | 1 | N | Y | Write "1" to this register to launch a SPI transaction. |
|status | 3 | Y | N | (Debug) Status = {triggered? (1b), sm_status (2b)}. sm_status = IDLE (0), TRANSACTION (1), or DONE (2) |
|param_MEM_DEPTH | 32 | Y | N | Yields the actual value of parameter MEM_DEPTH |



### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|axi_clk| 1b input | axi_clk | Connect to AXI bus clock |
|axi_resetn| 1b input | axi_clk | Connect to AXI bus reset (negative assertion)|
|spi_clk| 1b input | spi_clk | SPI clock output from this block |
|poci| 1b input | spi_clk | Peripheral Out, Controller In |
|pico| 1b output | spi_clk | Peripheral In, Controller Out |
|cs_b| 1b output | spi_clk | Chip Select (negative assertion) |



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



