/* stdio.h - header file
 
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


/* Header file for stdio.c */

#ifndef STDIO_H
#define STDIO_H

/* Prints string pointed by s using BIOS' int 0x10 service. */

int __attribute__((fastcall, naked))  puts(const char* s);

#define printf(string) puts(string);

#endif

/* Notes.
   
   Both puts and exit are now functions implemented in eg-10_utils.c.

   We should be careful not to clash names with libc.

   The function puts() was declared of type integer just to look like
   the usual ISO-C API. Since the example is a freestanding program,
   this will have no effect, though.

*/
