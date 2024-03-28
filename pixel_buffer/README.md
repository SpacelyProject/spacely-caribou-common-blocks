# Pixel Buffer

### Block Function
This block takes in the 448-bit dataframes from lpgbt and does two things.
1. Stores the raw dataframes into BRAM
2. Stores the 21-bit, aligned, and zero-suppressed pixels into BRAM.  
This block also provides a FIFO interface to read out both raw dataframes and pixels.  
Note: aligning is necessary because lpgbt gives data from the arrays in 16 bits chunks, while each pixel is 21 bits (11 bit address and 10 bit value)

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11  | Width in bits of the AXI memory addresses. Should be the same across the design. | 

### How to Instantiate
Connect it to lpgbt. Remember that the block uses two types of BRAM, so include the necessary .xci files.

### Block Diagram


### AXI Memory Table 

| Register Name | Reg Width | R? | W? | Function |
| ------------- | --------- | -- | -- | ------------------------------------ | 
| df_num_elem   | 7         | Y  | N  | Number of elements in the dataframe FIFO |
| df_data_out   | 448       | Y  | N  | Output data of dataframe FIFO. Address is automatically incremented upon read request |
| pix_num_elem  | 9         | Y  | N  | Number of elements in the pixel FIFO |
| pix_data_out  | 22        | Y  | N  | Output data of dataframe FIFO. Address is automatically incremented upon read request |

### Pixel FIFO Zero Suppression

To avoid filling up the pixel FIFO with zero pixels, we count consecutive zero pixels and write a single zero-pixel spacer into the FIFO. Notice that each pixel is 21 bits, but the output of the pixel FIFO is 22 bits. When <code>pix_data_out[21]</code> is 0, <code>pix_data_out[20:0]</code> is actual pixel data. When <code>pix_data_out[21]</code> is 1, <code>pix_data_out[20:0]</code> is the number of consecutive zero pixels that have been counted.


### I/O Table 

| Signal Name       | Bit width + direction          | Clock   | I/O Function and connection guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ | 
| data_in           | 448b input    | lpgbt clock   | Dataframes from lpgbt |
| data_valid        | 1b input      | lpgbt clock   | Dataframe valid signal from lpgbt |

Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.