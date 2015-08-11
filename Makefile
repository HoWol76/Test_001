FC=gfortran
LD=$(FC)
COPTS=-g -O0 -c
LOPTS=-g -O0

SRCFILES=$(wildcard *.f90)
OBJFILES=$(patsubst %.f90,%.o,$(SRCFILES))
MODFILES=$(patsubst %.f90,%.mod,$(wildcard mod*.f90))

TARGETS=test

default : test

all : $(TARGETS)

clean :
	rm -rf $(OBJFILES) $(MODFILES) $(TARGETS)

$(OBJFILES) : %.o : %.f90
	$(FC) $(COPTS) -o $@ $<

$(MODFILES) : %.mod : %.o

test : $(OBJFILES)
	$(LD) $(LOPTS) -o $@ $^

debug :
	@echo "SRCFILES = $(SRCFILES)"
	@echo "OBJFILES = $(OBJFILES)"
	@echo "MODFILES = $(MODFILES)"
	@echo "TARGETS = $(TARGETS)"

main.o : $(MODFILES)

.SUFFIXES :
.SUFFIXES : .f90 .o

.PHONY : default all clean
