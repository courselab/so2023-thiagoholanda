	bits 16           		; Set 16-bit mode


	mov ah, 0x0e		        ; set BIOS teletype mode

	mov al, 'H'		        ; Load 'H' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'e'		        ; Load 'e' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'l'		        ; Load 'l' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'l'		        ; Load 'l' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'o'		        ; Load 'o' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, ' '		        ; Load ' ' ascii code
	int 0x10                       	; Issue BIOS interrupt

	mov al, 'W'		        ; Load 'W' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'o'		        ; Load 'o' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'r'		        ; Load 'r' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'l'		        ; Load 'l' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'd'		        ; Load 'd' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, ' '		        ; Load ' ' ascii code
	int 0x10                       	; Issue BIOS interrupt

	mov al, 'o'		        ; Load 'o' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'f'		        ; Load 'f' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, ' '		        ; Load ' ' ascii code
	int 0x10                       	; Issue BIOS interrupt

	mov al, 'T'		        ; Load 'T' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'h'		        ; Load 'h' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'i'		        ; Load 'i' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'a'		        ; Load 'a' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'g'		        ; Load 'g' ascii code
	int 0x10                       	; Issue BIOS interrupt
	mov al, 'o'		        ; Load 'o' ascii code
	int 0x10                       	; Issue BIOS interrupt

halt:
	hlt                             ; Halt the machine
	jmp halt                        ; Safeguard

	times 510 - ($-$$) db 00        ; Pad with zeros
	dw 0xaa55                       ; Boot signature
