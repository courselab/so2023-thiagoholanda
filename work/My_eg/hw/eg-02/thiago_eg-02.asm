	bits 16

	org 0x7c00

	mov ah, 0x0e
	mov bx, 0x00
loop:
	mov al, [msg + bx]
	int 0x10
	cmp al, 0x00
	je halt
	add bx, 0x01
	jmp loop
halt:
	hlt
	jmp halt

msg:
	db 'Hello World of Thiago', 0x00

	times 510 - ($-$$) db 00
	dw 0xaa55
