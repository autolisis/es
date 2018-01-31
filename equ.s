



; Set output mode to be Output View
.equ stdout    , 1
; Write an ASCII char to Stdout
.equ SWI_PrChr , 0x00
; Write an ASCII string to Stdout
.equ SWI_PrStr , 0x02
; Stop execution
.equ SWI_Exit  , 0x11
; Malloc
.equ SWI_Malloc, 0x12
; Dealloc
.equ SWI_Dalloc, 0x13
; Open file
.equ SWI_Open  , 0x66
; File open Modes
.equ Fmode_r   , 0
.equ Fmode_w   , 1
.equ Fmode_a   , 2
; Close file
.equ SWI_Close , 0x68
; Write a null-ending string
.equ SWI_WrStr , 0x69
; Read a null-ending string
.equ SWI_RdStr , 0x6a
; Write an Integer
.equ SWI_WrInt , 0x6b
; Read an Integer
.equ SWI_RdInt , 0x6c
