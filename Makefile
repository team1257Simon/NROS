all:
	~/opt/cross/bin/i586-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	~/opt/cross/bin/i586-elf-as boot.s -o boot.o
	~/opt/cross/bin/i586-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
	/opt/local/bin/qemu-system-i386 -kernel myos.bin