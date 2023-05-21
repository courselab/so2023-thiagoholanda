#   <file> - <One-line note about this file>
# 
#   Copyright (c) 2023, Thiago H. C. Rego 
#
#   This piece of software is a derivative work of SYSeg, by Monaco F. J.
#   SYSeg is distributed under the license GNU GPL v3, and is available
#   at the official repository https://www.gitlab.com/monaco/syseg.
#
#   This file is part of SYseg.
#
#   SYseg is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#   
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#   
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
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
	.string "Hello World of Thiago hw-s"

	.fill 510 - (.-_start),1 , 00
	.word 0xaa55
