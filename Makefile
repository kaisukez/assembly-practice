NASM = nasm -f elf
LD = ld -m elf_i386 -s
ERROR = 2> ERROR.txt
RMERR = rm -f ERROR.txt
LINE = echo ""

.PHONY: g n s go og o no on so os

# General Mode
g: $f.asm
	@$(NASM) $f.asm
	@$(LD) -o $f $f.o $(ERROR)
	@rm -f $f.o & $(RMERR)


# No-Error Mode
n: $f.asm
	@$(NASM) $f.asm $(ERROR)
	@$(LD) -o $f $f.o $(ERROR)
	@rm -f $f.o & $(RMERR)

# Standard Mode
s: $f.asm
	@$(NASM) $f.asm
	@$(LINE)
	@$(LD) -o $f $f.o
	@rm -f $f.o

# General Mode (keep object file)
go: $f.asm
	@$(NASM) $f.asm
	@$(LD) -o $f $f.o $(ERROR)
	@rm -f $f.o & $(RMERR)
og: $f.asm
	@$(NASM) $f.asm
	@$(LD) -o $f $f.o $(ERROR)
	@rm -f $f.o & $(RMERR)
o: $f.asm
	@$(NASM) $f.asm
	@$(LD) -o $f $f.o $(ERROR)
	@rm -f $f.o & $(RMERR)

# No-Error Mode (keep object file) 
no: $f.asm
	@$(NASM) $f.asm $(ERROR)
	@$(LD) -o $f $f.o $(ERROR)
	@$(RMERR)
on: $f.asm
	@$(NASM) $f.asm $(ERROR)
	@$(LD) -o $f $f.o $(ERROR)
	@$(RMERR)

# Standard Mode (keep object file)
so: $f.asm
	@$(NASM) $f.asm
	@$(LINE)
	@$(LD) -o $f $f.o
os: $f.asm
	@$(NASM) $f.asm
	@$(LINE)
	@$(LD) -o $f $f.o

clean:
	@rm -f $f $f.o
