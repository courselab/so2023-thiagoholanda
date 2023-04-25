	.code16

	.global begin

begin:	
	mov $0x0e, %ah
	mov $0x00, %bx
loop:
	mov msg(%bx), %al
	cmp $0x00, %al
	je halt
	int $0x10
	add $0x01, %bx
	jmp loop
halt:
	hlt
	jmp halt

msg:
	.string "Hello World of Thiago"

	.fill 510 - (.-begin),1 , 0
	.word 0xaa55
