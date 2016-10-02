# Welcome to my Assembly Practice

This is space that I practice assembly code and store related files.

## How to compile _.asm_ file

Normally, when you want to compile __myAsmFile.asm__ file, you will use these command...
```
$ nasm -f elf myAsmFile.asm
$ ld -o myAsmFile myAsmFile.o
$ rm myAsmFile.o
```

or something like that. But now you can use _makefile_ to make it easy by using just __make__ or __make g__ command (they are the same).
```
$ make f=myAsmFile
$ make g f=myAsmFile
```

If you don't want to see error message when compile, you can use this command...
```
$ make n f=myAsmFile
```

And if you want to see error message from __ln__ command (in __make__ command I cut out that error message).
```
$ make s f=myAsmFile
```

If you want to keep object file you can use...
```
$ make o f=myAsmFile
```

Also you can keep object file with no-error message or full-error message when use __make__ command...
```
$ make so f=myAsmFile
$ make no f=myAsmFile
```

And Also you can swap the letter
```
$ make os f=myAsmFile
$ make on f=myAsmFile
```

## How to run compiled file
You can run the program by...
```
./myAsmFile
```
Very easy.

## What is next?
You can adjust this __Makefile__ to be what you want. Not only assembly code that use long command when you want to compile it, but also another code that using tons of option when compile, you can adapt it to make it easy to use like I do.
