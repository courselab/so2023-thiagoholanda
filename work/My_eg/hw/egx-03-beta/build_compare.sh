#!/bin/bash

nasm thiago_eg-02.asm -f bin -o thiago_eg-02.bin

objdump -M intel -b binary -m i8086 -D thiago_eg-02.bin  > objdump_thiago_eg-02.txt

as --32 thiago_egx-03-beta.S -o thiago_egx-03-beta.o

ld -melf_i386 --oformat=binary -e begin -Ttext=0x7C00 thiago_egx-03-beta.o -o thiago_egx-03-beta.bin

objdump -M intel -b binary -m i8086 -D thiago_egx-03-beta.bin  > objdump_thiago_egx-03-beta.txt

meld objdump_thiago_eg-02.txt objdump_thiago_egx-03-beta.txt &

qemu-system-i386 -drive format=raw,file=thiago_egx-03-beta.bin -net none &

as --32 thiago_egx-03-beta-start.S -o thiago_egx-03-beta-start.o

ld -melf_i386 --oformat=binary -Ttext=0x7C00 thiago_egx-03-beta-start.o -o thiago_egx-03-beta-start.bin

objdump -M intel -b binary -m i8086 -D thiago_egx-03-beta-start.bin  > objdump_thiago_egx-03-beta-start.txt

meld objdump_thiago_eg-02.txt objdump_thiago_egx-03-beta-start.txt &

qemu-system-i386 -drive format=raw,file=thiago_egx-03-beta-start.bin -net none &

