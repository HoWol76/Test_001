FC=gfortran
LD=$(FC)
COPTS=-g -O0 -c
LOPTS=-g -O0

default : test

all : test

test :
	touch $@

.SUFFIXES :
.SUFFIXES : .f90 .o

.PHONY : default all
