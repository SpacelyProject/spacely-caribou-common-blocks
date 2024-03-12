# SPI Controller Interface

### Block Function
This is the SPI interface that contains a spi_controller block used to communicate with the generic_spi_peripheral on SPROCKET3/3A.

The interface is necessary to translate AXI data into data necessary to send a SPI write or SPI read to SP3/SP3A. It contains 2 FIFOs (spi_command_buffer and spi_read_buffer)
to handle the serializing and de-serializing of data to and from SPROCKET3/3A.

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 
| FPGA_REGISTER_N           | 5     | Number of addressable registers in the SPI controller interface. |

### How to Instantiate
This block needs to be instatiated on a top-level that will connect with the SPI peripheral on SPROCKET3/3A. Besides that block, it does not interact with any other blocks.

This block does requires axi4lite_interface_top (which includes axi4lite_slave_interface and mem_regs), fifo, and spi_controller (last 2 are in the same folder as this block).

### Block Diagram

Refer to /Documents/Projects/S/SParkDream/SParkDream Reference.pptx on the Fermi Sharepoint for an un-updated block diagram of spi_controller. 


### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ | 
| fpga_reg_spi_read_write       | 1          | Y    | Y    | If SPI command is a read or write command.  |
| fpga_reg_spi_address          | 10         | Y    | Y    | Address of SPI command transaction (for both read or write).  |
| fpga_reg_spi_data_len         | 8          | Y    | Y    | Length of data bits being written (for SPI write) or expected to be read back (for SPI read). This should NOT be 0!  **The assignment of this register will be the trigger for any SPI operation.** Re-assigning a new value to this register during an existing SPI operation will NOT interrupt the SPI operation, it will still get written to the register however. After a SPI operation has completed, this register will be set to 0 so the AXI user can read this register to know if a SPI operation has finished. |
| fpga_reg_spi_write_data       | {C_S_AXI_DATA_WIDTH}  | Y | Y | Data written to this register will be pushed into spi_command_buffer which holds SPI write data until all the data has been transmitted over AXI and is ready to be send over SPI. |   
| fpga_reg_spi_read_data        | {C_S_AXI_DATA_WIDTH}  | Y | N | Read from this register to read back data sent over from SPI peripheral on chip to spi_controller. Depending on the length of data expected to read back, there might be a need to read from this register multiple times. Everytime it is read, spi_read_buffer will pop a new value and assign it to the register for the subsequent AXI read (unless it is empty). |


### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ | 
| poci              | 1b input                       | AXI Clk / SPI Clk | Peripheral Out Controller In: data coming from the SPI peripheral on chip.  |
| pico              | 1b output                      | AXI Clk / SPI Clk | Peripheral In Contoller Out: data coming out of the spi_controller.  |  
| cs_b              | 1b output                      | AXI Clk / SPI Clk | Enable signal to tell SPI peripheral the start and end of a SPI transaction.  |
| spi_clk           | 1b output                      | AXI Clk           | SPI clock used by the SPI peripheral (same as AXI Clk). |


Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.