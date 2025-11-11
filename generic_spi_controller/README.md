# generic_spi_controller

## Block Function
This block allows simple reads and writes to the Fermilab generic_spi_peripheral ASIC IP.

**How to run a Basic SPI Transaction:**
1. Write your SPI command + data to *mem_write* (see below).
2. Set *transaction_len* = the number of bits in your SPI command + data
3. Write a "1" to *run*.
4. Wait for *status* to return to zero, indicating the transaction is complete.
5. Read the result from *mem_read* if desired (see below).

**Interacting with the Generic SPI Controller's Memory**

In order to allow for long uninterrupted reads/writes over SPI, the SPI controller has a memory bank where it can store write and read data.
Each entry in the memory bank is 32 bits, and the number of entries is configured by MEM_DEPTH.
A pointer system is used to keep track of where you are reading/writing to within the memory bank. *mem_write_ptr* tells you which write_memory entry will be written to next time you write a 32-bit word to *mem_write*. Similarly, *mem_read_ptr* tells you which read_memory word will be returned next time you read *mem_read*. Writing to *mem_write* or reading from *mem_read* will automatically advance the pointer so that sequential writes/reads return new data. To return to the start of the memory bank, simply write a "1" to the appropriate *_ptr_reset* register.

**Using Loop Mode**

If *loop_mode* is not zero, then after completing the regular transaction (of length *transaction_len*), the controller will start to loop the bit pattern you have specified in *loop_pattern*, whose length is set by *loop_pattern_len* and must be no longer than 32 cycles. If *loop_mode*=1, the looping will terminate after *loop_iters* cycles. If *loop_mode*=2, the looping will not terminate until you write something other than 2 to *loop_mode*.

**Functional Documentation**

For detailed functional documentation of the SPI transaction, see **Generic SPI Controller Functional Documentation.docx**

### Considerations for Timing Closure

**IMPORTANT NOTE:** This block contains a generated clock (spi_clk_gated), which must be appropriately defined in the constraint file.

Use this template to write a correct constraint, where:

**\<1\>** is the name of the clock driving the master_spi_clk input of this block.

**\<2\>** is the pin which generates **\<1\>**

**\<3\>** is the path to the generic_spi_controller block in your block diagram, i.e. My_Firmware_bd_i/generic_spi_controll_0

create_generated_clock -name spi_clk_gated -source [get_pins **\<2\>**] -divide_by 2 -add -master_clock **\<1\>** [get_pins **\<3\>**/inst/generic_spi_controller_interface_inst/generic_spi_controller_int/spi_clk_gated_reg/Q]

As always, remember to define appropriate (synchronous or asynchronous) relationships between clock domains, and to define input/output delays on I/Os. spi_clk_gated is synchronous with master_spi_clk.

## Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 
|MEM_DEPTH | 64 | The number of 32-bit words in the memory of the controller. The longest SPI write/read you can perform with this IP in one shot is MEM_DEPTH*32 |


## How to Instantiate
generic_spi_controller_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.


## AXI Memory Table 




| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|mem_write | 32 | Y | Y | Use this register to write your SPI command to the controller's  memory in chunks of 32 bits. |
|mem_write_ptr | 32 | Y | N | This read-only register tells you which byte of memory is going to be written next time you write a word to mem_write. |
|mem_write_ptr_reset | 1 | N | Y | Write "1" to this register to reset mem_write_ptr to zero. |
|mem_read | 32 | Y | N | Use this register to read data from SPI in chunks of 32 bits. |
|mem_read_ptr | 32 | Y | N | This read-only register tells you which byte of memory is going to be read on the next read of mem_read. |
|mem_read_ptr_reset | 1 | N | Y | Write "1" to this register to reset mem_read_ptr to zero. |
|transaction_count | 32 | Y | N | The total number of SPI transactions that have been run since startup. |
|transaction_len | 32 | Y | Y | The length of the desired SPI transaction in bits. |
|run | 1 | N | Y | Write "1" to this register to launch a SPI transaction. |
|status | 3 | Y | N | (Debug) Status = {triggered? (1b), sm_status (2b)}. sm_status = READY (0), TRANSACTION (1), LOOP (2), or DONE (3) |
|loop_pattern | 32 | Y | Y | Store a pattern up to 32 bits to be repeated in Loop Mode. |
|loop_pattern_len | 8 | Y | Y | The length of the pattern to loop over (must be <= 32) |
|loop_iters | 32 | Y | Y | How many times to loop over the pattern |
|loop_mode | 3 | Y | Y |0 = no loop, 1 = loop for loop_iters iterations, 2 = infinite loop |
|loop_counter | 32 | Y | N | Count of how many loops have been executed since start of transaction. |
|param_MEM_DEPTH | 32 | Y | N | Yields the actual value of parameter MEM_DEPTH |



## I/O Table 





| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|axi_clk| 1b input | axi_clk | Connect to AXI bus clock |
|axi_resetn| 1b input | axi_clk | Connect to AXI bus reset (negative assertion)|
|poci| 1b input | master_spi_clk | Peripheral Out, Controller In |
|pico| 1b output | master_spi_clk | Peripheral In, Controller Out |
|cs_b| 1b output | master_spi_clk | Chip Select (negative assertion) |
|master_spi_clk| 1b input | master_spi_clk | Master clock input for this block. Remember this clock is DOUBLE the rate of the spi clock that will be generated.|
|spi_clk_gated| 1b output | master_spi_clk | Generated SPI clock from this block. The speed of the generated clock is 1/2 the speed of master_spi_clk, and it is aligned to avoid any race condition between transitions of cs_b and rising edges of spi_clk_gated. Connect this to the DUT.|



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

## mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

mem_write,0x0,0xffffffff,True,True

mem_write_ptr,0x4,0xffffffff,True,False

mem_write_ptr_reset,0x8,0x1,False,True

mem_read,0xc,0xffffffff,True,False

mem_read_ptr,0x10,0xffffffff,True,False

mem_read_ptr_reset,0x14,0x1,False,True

transaction_count,0x18,0xffffffff,True,False

transaction_len,0x1c,0xffffffff,True,True

run,0x20,0x1,False,True

status,0x24,0x7,True,False

loop_pattern,0x28,0xffffffff,True,True

loop_pattern_len,0x2c,0xff,True,True

loop_iters,0x30,0xffffffff,True,True

loop_mode,0x34,0x7,True,True

loop_counter,0x38,0xffffffff,True,False

param_MEM_DEPTH,0x3c,0xffffffff,True,False




