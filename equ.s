



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

; Embest stuff
.equ SWI_SETSEG8, 0x200
; display on 8 Segment
.equ SWI_SETLED, 0x201
; LEDs on/off
.equ SWI_CheckBlack, 0x202
; check Black button
.equ SWI_CheckBlue, 0x203
; ;check press Blue button
.equ SWI_DRAW_STRING, 0x204
; display a string on LCD
.equ SWI_DRAW_INT, 0x205
; display an int on LCD
.equ SWI_CLEAR_DISPLAY,0x206
; clear LCD
.equ SWI_DRAW_CHAR, 0x207
; display a char on LCD
.equ SWI_CLEAR_LINE, 0x208
; clear a line on LCD
.equ SWI_EXIT, 0x11
; terminate program
.equ SWI_GetTicks, 0x6d
; get current time
; byte values for each segment of the 8 segment display
.equ SEG_A, 0x80
.equ SEG_B, 0x40
.equ SEG_C, 0x20
.equ SEG_D, 0x08
.equ SEG_E, 0x04
.equ SEG_F, 0x02
.equ SEG_G, 0x01
.equ SEG_P, 0x10
; bit patterns for LED lights
.equ LEFT_LED, 0x02
.equ RIGHT_LED, 0x01
Digits:
.word SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_G ;0
.word SEG_B|SEG_C ;1
.word SEG_A|SEG_B|SEG_F|SEG_E|SEG_D ;2
.word SEG_A|SEG_B|SEG_F|SEG_C|SEG_D ;3
.word SEG_G|SEG_F|SEG_B|SEG_C ;4
.word SEG_A|SEG_G|SEG_F|SEG_C|SEG_D ;5
.word SEG_A|SEG_G|SEG_F|SEG_E|SEG_D|SEG_C ;6
.word SEG_A|SEG_B|SEG_C ;7
.word SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F|SEG_G ;8
.word SEG_A|SEG_B|SEG_F|SEG_G|SEG_C ;9
.word 0 ;Blank display
