# Dataframe buffer

### Block Function
The dataframe buffer takes in raw 234-bit dataframes from the lpgbt and stores them into a BRAM FIFO. The block then allows read out of the FIFO through the AXI bus by splitting the 234-bit dataframe into eight 32-bit registers. Also counts the number of FEC errors detected.

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11  | Width in bits of the AXI memory addresses. Should be the same across the design. | 

### How to Instantiate
Instantiate /src/dataframe_store_verilog.v as an RTL module. This block only needs to connect to lpgbt. The readout of the FIFO is done through AXI4.

When importing into Vivado, be sure to include sources from both /src/ and /ip/ subdirectories.


### How to Read FIFO
The 234-bit dataframe is split into eight seperate AXI registers for readout. The block will advance the read pointer of the FIFO every time register[9] is read. The idea is that the AXI master reads register[2:9] in a sequential manner to get the entire dataframe. Once register[9] is read, the block assumes that register[2:8] have also been read, and increments the read pointer.  
To reset the FEC error counter, write to the LSB of register [10]. This will reset the counter to 0.

### Block Diagram


### AXI Memory Table 

| Register Name | Reg Width | R? | W? | Function |
| ------------- | --------- | -- | -- | ------------------------------------ | 
| lpgbt_rd_en   | 1         | Y  | Y  | Control signal that determines whether the block receives data from lpgbt. 1 = read, 0 = stop |
| full          | 1         | Y  | N  | FIFO full signal |
| empty         | 1         | Y  | N  | FIFO empty signal |
| dataframe[ 31:  0] | 32   | Y  | N  | 32-bit chunks of dataframe |
| dataframe[ 63: 32] | 32   | Y  | N  | 32-bit chunks of dataframe |
| dataframe[ 95: 64] | 32   | Y  | N  | 32-bit chunks of dataframe |
| dataframe[127: 96] | 32   | Y  | N  | 32-bit chunks of dataframe |
| dataframe[159:128] | 32   | Y  | N  | 32-bit chunks of dataframe |
| dataframe[191:160] | 32   | Y  | N  | 32-bit chunks of dataframe |
| dataframe[223:192] | 32   | Y  | N  | 32-bit chunks of dataframe |
| dataframe[233:224] | 10   | Y  | N  | 10-bit chunks of dataframe (zero-extended) |
| err_counter   | 32        | Y  | Y  | 32-bit counter for number of FEC errors |


### I/O Table 

| Signal Name       | Bit width + direction          | Clock   | I/O Function and connection guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ | 
| uplinkUserData_i  | 234-bit input                  | lpgbt   | 234-bit dataframe from lpgbt       |
| uplinkrdy_i       | 1-bit input                    | lpgbt   | Data valid signal from lpgbt       |
| clk40_i           | 1-bit input                    | lpgbt   | lpgbt clock                        |
| uplinkFEC_i       | 1-bit input                    | lpgbt   | FEC error signal                   |

Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b (standard for SP3/SP3A)

*BASE (IP Base Address)

lpgbt_rd_en,0x4,0x1,True,True

empty,0x8,0x1,True,False

full,0x8,0x2,True,False

data_frame[0],0xc, 0xffffffff, True, False

data_frame[1],0x10, 0xffffffff, True, False

data_frame[2],0x14, 0xffffffff, True, False

data_frame[3],0x18, 0xffffffff, True, False

data_frame[4],0x1c, 0xffffffff, True, False

data_frame[5],0x20, 0xffffffff, True, False

data_frame[6],0x24, 0xffffffff, True, False

data_frame[7],0x28, 0x3ff, True, False

err_counter, 0x2c, 0xffffffff, True, True
