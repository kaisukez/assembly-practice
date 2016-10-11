NASM = nasm -f elf64
LD = ld
ERROR = 2> ERROR.txt
RMERR = rm -f ERROR.txt
LINE = echo ""

.PHONY: g s o go og so os

#%: %.asm
#	@$(NASM) $<
#	@$(LD) -o $* $*.o $(ERROR)
#	@rm -f $*.o ERROR.txt

# General Mode
g: $f.asm
	@$(NASM) $f.asm
	@$(LD) -o $f $f.o $(ERROR)
	@rm -f $f.o & $(RMERR)

# Standard Mode
s: $f.asm
	@$(NASM) $f.asm
	@$(LINE)
	@$(LD) -o $f $f.o
	@rm -f $f.o

# General Mode (keep object file)
o: $f.asm
	@$(NASM) $f.asm
	@$(LD) -o $f $f.o $(ERROR)
	@rm -f $f.o & $(RMERR)
go: $f.asm
	@$(NASM) $f.asm
	@$(LD) -o $f $f.o $(ERROR)
	@rm -f $f.o & $(RMERR)
og: $f.asm
	@$(NASM) $f.asm
	@$(LD) -o $f $f.o $(ERROR)
	@rm -f $f.o & $(RMERR)

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
