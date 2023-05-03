	.code16

_start:	

	mov ah, 0x0e
	mov bx, 0x00
loop:
	mov al, BYTE PTR [msg + bx]
	cmp al, 0x00
	je halt
	int 0x10
	add bx, 0x01
	jmp loop
halt:
	hlt
	jmp halt

msg:
	.string "Hello World of Thiago"

	.fill 510 - (.-_start), 1, 0
	.word 0xaa55
