FC=gfortran
LD=$(FC)
COPTS=-g -O0 -c
LOPTS=-g -O0

SRCFILES=$(wildcard *.f90)
OBJFILES=$(patsubst %.f90,%.o,$(SRCFILES))

default : test

all : test

clean :
	rm -rf $(OBJFILES)

$(OBJFILES) : %.o : %.f90
	$(FC) $(COPTS) -o $@ $^

test : $(OBJFILES)
	$(LD) $(LOPTS) -o $@ $^

debug :
	@echo "SRCFILES = $(SRCFILES)"
	@echo "OBJFILES = $(OBJFILES)"

.SUFFIXES :
.SUFFIXES : .f90 .o

.PHONY : default all clean
