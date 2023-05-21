/* hw-c_utils.c - Utils C file
 
   Copyright (c) 2023, Thiago H. C. Rego

   This piece of software is a derivative work of SYSeg, by Monaco F. J.
   SYSeg is distributed under the license GNU GPL v3, and is available
   at the official repository https://www.gitlab.com/monaco/syseg.

   This file is part of SYseg.

   SYseg is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/* A function-which prints pointed by str using BIOS' int 0x10 service. 

   This function clobbers eax, ebx, ecx and esi.
*/


int __attribute__((fastcall, naked))  puts(const char* s)
{
__asm__
(
"       mov   %cx, %bx             \n"
"	mov   $0x0e, %ah           \n"
"	mov   $0x0, %si            \n"
"loop:	           	           \n"
"	mov   (%bx, %si), %al      \n"
"	cmp   $0x0, %al	           \n"
"	je    end                  \n"
"	int   $0x10	           \n"
"	add   $0x1, %si 	   \n"
"	jmp   loop	           \n"
"end:                              \n"
"        mov   %si, %ax            \n"
"        ret                       \n"
);
}
