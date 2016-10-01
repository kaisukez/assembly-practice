NASM = nasm -f elf
LD = ld -m elf_i386 -s
FILES = code code1 code2 code3
ALLFILES = code.o code code1.o code1 code2.o code2 code3.o code3
ALLCOMMAND = $(ALLFILES) coden code1n code2n code3n
ERROR = 2> ERROR.txt
RMERR = rm -f ERROR.txt

.PHONY: $(ALLCOMMAND)

all: $(FILES)

code.o: code.asm
	$(NASM) code.asm
code: code.asm
	$(NASM) code.asm
	$(LD) -o code code.o
	rm -f code.o
coden: code.asm
	$(NASM) code.asm $(ERROR)
	$(LD) -o code code.o $(ERROR)
	rm -f code.o & $(RMERR)

code1.o: code1.asm
	$(NASM) code1.asm
code1: code1.asm
	$(NASM) code1.asm
	$(LD) -o code1 code1.o
	rm -f code1.o
code1n: code1.asm
	$(NASM) code1.asm $(ERROR)
	$(LD) -o code1 code1.o $(ERROR)
	rm -f code1.o & $(RMERR)

code2.o: code2.asm
	$(NASM) code2.asm
code2: code2.asm
	$(NASM) code2.asm
	$(LD) -o code2 code2.o
	rm -f  code2.o
code2n: code2.asm
	$(NASM) code2.asm $(ERROR)
	$(LD) -o code2 code2.o $(ERROR)
	rm -f code2.o & $(RMERR)

code3.o: code3.asm
	$(NASM) code3.asm
code3: code3.asm
	$(NASM) code3.asm
	$(LD) -o code3 code3.o
	rm -f code3.o
code3n: code3.asm
	$(NASM) code3.asm $(ERROR)
	$(LD) -o code3 code3.o $(ERROR)
	rm -f code3.o & $(RMERR)

code4.o: code4.asm
	$(NASM) code4.asm
code4: code4.asm
	$(NASM) code4.asm
	$(LD) -o code4 code4.o
	rm -f code4.o
code4n: code4.asm
	$(NASM) code4.asm $(ERROR)
	$(LD) -o code4 code4.o $(ERROR)
	rm -f code4.o & $(RMERR)

clean:
	rm -f $(ALLFILES)
