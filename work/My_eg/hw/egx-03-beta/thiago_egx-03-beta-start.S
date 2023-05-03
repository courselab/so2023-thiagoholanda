	.code16

	.global _start

_start:	
	mov $0x0e, %ah
	mov $0x00, %si
loop:
	mov msg(%si), %al
	cmp $0x00, %al
	je halt
	int $0x10
	add $0x01, %si
	jmp loop
halt:
	hlt
	jmp halt

msg:
	.string "Hello World of Thiago"

	.fill 510 - (.-_start),1 , 00
	.word 0xaa55
