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
