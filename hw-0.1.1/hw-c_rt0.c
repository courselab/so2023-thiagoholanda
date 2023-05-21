/* hw-c_rt0.c - rt0 C file
 
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


/* This symbol is defined in the linker script. */

extern void __END_STACK__;


/* Call main and halt. 

   This is where main() returns to,

   as do regular programs e.g. in GNU/Linux OS. */

void __attribute__((naked)) _start()
{
__asm__ 
(
"             mov  $__END_STACK__ , %sp  \n"
"             call main                  \n"
"halt:                                   \n"
"             hlt                        \n"
"             jmp halt                   \n"
);
}


/* Notes.

   Our rt0 file is now C with inline asm.

 */
