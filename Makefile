######################################################################
## $Id: Makefile,v 1.4 2016/10/28          bkochuna Exp $
######################################################################

PROG := membench

CC := cc
CFLAGS := -O0

.PHONY: default clean

default: $(PROG).png

$(PROG)_gp.png: $(PROG).gp $(PROG).out
	gnuplot membench.gp < membench.out > membench_gp.png

$(PROG).png: $(PROG).py $(PROG).out
	python $(PROG).py

$(PROG).out: $(PROG).exe
	./$(PROG).exe > $(PROG).out

$(PROG).exe: $(PROG).c
	$(CC) $(CFLAGS) -o $(PROG).exe $(PROG).c 

clean:
	rm -f $(PROG).exe $(PROG).png $(PROG).out

######################################################################
## $Log: Makefile,v $
## Revision 1.4  2016/10/28           bkochuna
## Changed compiler flags
##
## Revision 1.3  1998/02/05 22:08:53  dmartin
## eps --> ps
##
## Revision 1.2  1998/02/01 22:11:26  dmartin
## *** empty log message ***
##
## Revision 1.1  1998/01/19 00:47:39  dmartin
## Initial revision
##
######################################################################
