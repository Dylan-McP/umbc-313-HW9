The code is attached, as well as the execution thread.

To assemble: nasm -f elf32 -g -F dwarf -o dylansworld.o dylansworld.asm

To link and load: ld -m elf_i386 -o dylansworld dylansworld.o
