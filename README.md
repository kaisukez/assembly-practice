# Welcome to my Assembly Practice

This is space that I practice assembly code and store related files.

## How to compile __.asm__ file

Normally, when you want to compile __myAsmFile.asm__ file, you will use these command...
```
$ nasm -f elf64 myCode.asm
$ ld -o myAsmFile myCode.o
$ rm myCode.o
```

to make it easy you can use __Makefile__ to compile code instead of typing above command like this...
```
$ make f=myCode
```

## How to run code

After you have compiled __.asm__ file, you can run code by typing...
```
$ ./myCode
```
