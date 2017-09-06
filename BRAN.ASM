;----------------------------------------------
;BRAN
; ROM switching software Branquar 2012
;----------------------------------------------
	.DEFINE asm_code $b010
	.DEFINE header   0		; Header Wouter Ras emulator
	.DEFINE filenaam "BRAN"

.org asm_code-22*header

.IF header
;********************************************************************
; ATM Header for Atom emulator Wouter Ras

name_start:
	.byte filenaam			; Filename
name_end:
	.repeat 16-name_end+name_start	; Fill with 0 till 16 chars
	  .byte $0
	.endrep

	.word asm_code			; 2 bytes startaddress
	.word exec			; 2 bytes linkaddress
	.word eind_asm-start_asm	; 2 bytes filelength

;********************************************************************
.ENDIF


exec:
start_asm:
	.include "BRAN.inc"
eind_asm: