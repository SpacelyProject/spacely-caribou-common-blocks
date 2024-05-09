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
| FPGA_REGISTER_N           | 7     | Number of addressable registers in the SPI controller interface. |

### How to Instantiate
The block spi_controller_interface_top needs to be instatiated on a top-level that will connect with the SPI peripheral on SPROCKET3/3A. Besides that block, it does not interact with any other blocks.

This block does require axi4lite_interface_top (which includes axi4lite_slave_interface and mem_regs), fifo, spi_controller, and spi_controller_interface (the last three blocks are found within this directory).

### Block Diagram
<br>
<img width="1238" alt="Screenshot 2024-04-25 at 3 11 44 PM" src="https://github.com/Fermilab-Microelectronics/spacely-caribou-common-blocks/assets/92898337/6774dfd0-ab2d-443d-a9e4-2be4c4b76bea">
<img width="1232" alt="Screenshot 2024-04-25 at 3 31 50 PM" src="https://github.com/Fermilab-Microelectronics/spacely-caribou-common-blocks/assets/92898337/50a5c794-eead-478f-8746-47db71188403">

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ | 
| fpga_reg_spi_read_write       | 1          | Y    | Y    | If SPI command is a read or write command.  |
| fpga_reg_spi_address          | 10         | Y    | Y    | Address of SPI command transaction (for both read or write).  |
| fpga_reg_spi_data_len         | 8          | Y    | Y    | Length of data bits being written (for SPI write) or expected to be read back (for SPI read). This should NOT be 0!  **The assignment of this register will be the trigger for any SPI operation.** Re-assigning a new value to this register during an existing SPI operation will NOT interrupt the SPI operation, it will still get written to the register however. After a SPI operation has completed, this register will be set to 0 so the AXI user can read this register to know if a SPI operation has finished. |
| fpga_reg_spi_opcode_group     | 2          | Y    | Y     | Group number the SPI operation is referring to: Internal Status Regs (00), GPGenerator Short Group (01), Pattern Signals Group (10), lpGBT Config Parameters (11). This is only necessary for the spi_controller_interface interacting with SP3A. It can be ignored for SP3. |
| fpga_reg_spi_write_data       | {C_S_AXI_DATA_WIDTH}  | Y | Y | Data written to this register will be pushed into spi_command_buffer which holds SPI write data until all the data has been transmitted over AXI and is ready to be send over SPI. |   
| fpga_reg_spi_read_data        | {C_S_AXI_DATA_WIDTH}  | Y | N | Read from this register to read back data sent over from SPI peripheral on chip to spi_controller. Depending on the length of data expected to read back, there might be a need to read from this register multiple times. Everytime it is read, spi_read_buffer will pop a new value and assign it to the register for the subsequent AXI read (unless it is empty). |
| fpga_reg_clock_divide_factor | 5           | Y     | Y    | This register specifies the divide factor the clock_divider is to use to divide S_AX_CLK to generate spi_clk. It will divide by 2^N where N is the the divide factor being written to the register. spi_clk will only be updated to a new clock divide factor is SPI is not busy; if this register is written to during a SPI transaction, spi_clk will only be updated with the new divide factor after the SPI transaction has completed to not interfere with it. 


### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ | 
| poci              | 1b input                       | AXI Clk / SPI Clk | Peripheral Out Controller In: data coming from the SPI peripheral on chip.  |
| pico              | 1b output                      | AXI Clk / SPI Clk | Peripheral In Contoller Out: data coming out of the spi_controller.  |  
| cs_b              | 1b output                      | AXI Clk / SPI Clk | Enable signal to tell SPI peripheral the start and end of a SPI transaction.  |
| spi_clk           | 1b output                      | AXI Clk           | SPI clock used by the SPI peripheral. Derived from S_AXI_CLK and generated by clock_divider. |


Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b (standard for SP3/SP3A)

*BASE (IP Base Address)

spi_read_write,0x0,0x1,True,True

spi_address,0x4,0x3F,True,True

spi_data_len.0x8,0xFF,True,True

spi_opcode_code,0xC,0xFF,True,True

spi_write_data,0x10,0xFFFFFFFF,True,True

spi_read_data,0x14,0xFFFFFFFF,True,False

clock_divide_factor,0x18,0x1F,True,True
