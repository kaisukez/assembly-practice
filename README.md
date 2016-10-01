# Welcome to my Assembly Practice

This is space that I practice assembly code and store related files.

## How to compile _.asm_ file
I can use this way to compile _foo.asm_ file.
```
$ cp foo.asm code.asm
$ make code
```
I can store 5 different _code_ file {__code__, __code1__, __code2__, __code3__, __code4__} so you can use this command.
```
$ cp foo.asm code4.asm
$ make code4
```

#### Tips
1. You can use __make -s__ to run make in silence mode.
2. You can compile code without error message on screen by putting __n__ in the last of the file name when using __make__ command. For example...
```
$ make coden
```
also you can use with this silence mode.
```
$ make -s code1n
```

## How to run compiled file
You can run by __./__ and following by your compiled file name like...
```
$ ./code
```
