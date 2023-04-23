How this work was made.

Following the comment from: https://gitlab.com/monaco/syseg/-/blob/master/eg/hw/README.m4, it informs:

"Note: instead of using eg-00.hex, you may also create your
 own hexfile, say hello.hex, by writing the first 49 bytes of
 eg-00.hex, one per line, and then

 for ((i=50; i<=512; i++)); do echo 0; done >> hello.hex
"

The file "thiago_eg-00.hex" was created to present the sentence: "Hello World of Thiago"

The command to fill with 00 in the file was:
    for ((i=90; i<=512; i++)); do echo 00; done >> thiago_eg-00.hex

The last 2 bytes was changed to add 55aa.

After that, the following commands were used to run in the qemu:

$ <path>syseg/tools/hex2bin thiago_eg-00.hex thiago_eg-00.bin
$ qemu-system-i386 -drive format=raw,file=thiago_eg-00.bin -net none




