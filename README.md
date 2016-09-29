# Welcome to my Assembly Practice

This is space that I practice assembly code and store related files.

#### How to compile _.asm_ file
I can use this way to compile _foo.asm_ file.
```
$ cp foo.asm code.asm
$ make code
```
also I can store 4 different _code_ file such as...
```
$ cp foo.asm code.asm
$ make code
```
```
$ cp foo.asm code1.asm
$ make code1
```
```
$ cp foo.asm code2.asm
$ make code2
```
```
$ cp foo.asm code3.asm
$ make code3
```

#### How to run compiled file
You can run by __./__ and following by your compiled file name like...
```
$ ./code
```

#### Tips
1. You can compile code without error message on screen by put __n__ in the last name of the file name when using __make__ command.
```
$ make coden
````
or
```
$ make code1n
```