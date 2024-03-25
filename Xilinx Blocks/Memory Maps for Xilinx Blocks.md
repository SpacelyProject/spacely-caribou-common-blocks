# Memory Maps for Xilinx Blocks 

This file contains memory maps for common Xilinx blocks which you can copy and paste to use in your Spacely-Caribou Memory Map.

As a reminder, the format for mem_map.txt lines is:

(register name),(IP Base Address),(Register Address Offset),(# Bits),(Bool Readable?),(Bool Writeable?)

## mem_map.txt for AXI GPIO
data,(BASE),0x0,(GPIO Pins),True,True

direction,(BASE),0x4,(GPIO Pins),True,True

Where (GPIO Pins) is the number of GPIO pins used in your design.
