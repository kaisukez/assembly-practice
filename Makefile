CC = nasm
FILES = code code1 code2 code3
ALLFILES = code.o code code1.o code1 code2.o code2 code3.o code3
#ALLCOMMAND = code.o code coden code1.o code1 code1n code2.o code2 code2n code3.o code3 code3n
ALLCOMMAND = $(ALLFILES) coden code1n code2n code3n
ERROR = 2> ERROR.txt
RMERR = rm ERROR.txt

.PHONY: $(ALLCOMMAND)

all: $(FILES)

code.o: code.asm
	$(CC) -f elf code.asm
code: code.asm
	$(CC) -f elf code.asm
	ld -m elf_i386 -s -o code code.o
	rm code.o
coden: code.asm
	$(CC) -f elf code.asm $(ERROR)
	ld -m elf_i386 -s -o code code.o $(ERROR)
	rm code.o & $(RMERR)


code1.o: code1.asm
	$(CC) -f elf code1.asm
code1: code.asm
	$(CC) -f elf code1.asm
	ld -m elf_i386 -s -o code1 code1.o
	rm code1.o
code1n: code1.asm
	$(CC) -f elf code1.asm $(ERROR)
	ld -m elf_i386 -s -o code1 code1.o $(ERROR)
	rm code1.o & $(RMERR)


code2.o: code2.asm
	$(CC) -f elf code2.asm
code2: code2.asm
	$(CC) -f elf code2.asm
	ld -m elf_i386 -s -o code2 code2.o
	rm code2.o
code2n: code2.asm
	$(CC) -f elf code2.asm $(ERROR)
	ld -m elf_i386 -s -o code2 code2.o $(ERROR)
	rm code2.o & $(RMERR)


code3.o: code3.asm
	$(CC) -f elf code3.asm
code3: code3.asm
	$(CC) -f elf code3.asm
	ld -m elf_i386 -s -o code3 code3.o
	rm code3.o
code3n: code3.asm
	$(CC) -f elf code3.asm $(ERROR)
	ld -m elf_i386 -s -o code3 code3.o $(ERROR)
	rm code3.o & $(RMERR)

clean:
	rm -f $(ALLFILES)
