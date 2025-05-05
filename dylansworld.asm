;; Hello World Program - asmtutor.com, edited by Dylan McPhillips
;; To assemble: nasm -f elf32 -g -F dwarf -o myProgram.o myProgram.asm
;; To link and load: ld -m elf_i386 -o myProgram myProgram.o
;; Run with ./helloworld

SECTION .data
msg	db	"Dylan's World!", 0Ah

SECTION .text
global _start

_start:

	mov	edx, 15		; # of bytes in msg to write
	mov 	ecx, msg	; moves the memory address of the string into ecx
	mov	ebx, 1		; write to the STDOUT file
	mov	eax, 4		; invoke SYS_WRITE
	int 	80h

	mov	ebx, 0		; return 0 status on exit - 'No Errors'
	mov	eax, 1		; invoke SYS_EXIT (kernel opcode 1)
	int	80h
