# simple_serial

### Block Function
This is a controller block for a simple serial interface which has a chip select, and up to 32b read/writes.
When a transaction is triggered by writing to the "trigger" register, bits from the write_data register are sent over the serial interface (pico), and bits from the serial interface (poci) are written to the read_data register simultaneously, allowing either simplex or duplex communication.

Status and transaction_count registers are provided for debug, or for polling to ensure the transaction is complete. 

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 


### How to Instantiate
simple_serial_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.


### Block Diagram
(TODO: Create a useful block diagram which includes all the major sub-blocks of this firmware block.)

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|write_data | 32 | Y | Y | The user writes data bits to this register, which will be sent over pico |
|read_data | 32 | Y | N | Data bits received over poci are stored in this register |
|data_len | 32 | Y | Y | This register determines the length of the transaction. (NOTE: Currently max data length is 32, anything above this will be ignored.) |
|trigger | 1 | N | Y | Write to this register to initiate a single serial transaction. If a transaction is already in progress, repeated writes to this register will be ignored. |
|status | 3 | Y | N | status[2] reads 1 when a trigger is pending. status[1:0] reads the controller state: 2'b0 = IDLE, 2'b1 = TRANSACTION, 2'b2 = DONE |
|transaction_count | 32 | Y | N | Increments after every completed transaction |



### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|cs_b| 1b output | serial_clk | Chip Select (inverse polarity) -- connect to peripheral/ASIC |
|pico| 1b output | serial_clk | Peripheral In / Controller Out -- connect to peripheral/ASIC |
|dbg_status| 3b output | serial_clk | Debug signal, equivalent to status register -- connect to ILA if desired |
|dbg_current_bit| 6b output | serial_clk | Debug signal, shows which bit of the transaction is in progress -- connect to ILA if desired |
|serial_clk| 1b input | serial_clk | Clock for the serial interface. Must be provided to this block. |
|axi_clk| 1b input | axi_clk | Connect to AXI clock |
|axi_resetn| 1b input | axi_clk | Connect to AXI reset signal |
|poci| 1b input | serial_clk | Peripheral Out / Controller In -- connect to peripheral/ASIC|



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

write_data,0x0,0xffffffff,True,True

read_data,0x4,0xffffffff,True,False

data_len,0x8,0xffffffff,True,True

trigger,0xc,0x1,False,True

status,0x10,0x7,True,False

transaction_count,0x14,0xffffffff,True,False



