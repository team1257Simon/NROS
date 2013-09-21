all:
	export QPATH = C:\cygwin\home\user\cross\bin
	${QPATH}\i586-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	${QPATH}\i586-elf-as boot.s -o boot.o
	${QPATH}\i586-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc