BOOKS= cenario core conto cenario-steam

ALLNEEDS= $(BOOKS) Makefile

all: $(ALLNEEDS)
	for BOOK in $(BOOKS) ; do \
	  cd $$BOOK; \
	  echo Making $$BOOK; \
	  make PDF=../$$BOOK.pdf pdf; \
	  echo $$BOOK Done; \
	  cd ..; \
	done;

dvi: $(ALLNEEDS)
	for BOOK in $(BOOKS) ; do \
	  cd $$BOOK; \
	  echo Making $$BOOK; \
	  make dvi \
	  echo $$BOOK Done; \
	  cd ..; \
	  -ln -s $$BOOK/*.dvi; \
	done;

clean:
	for BOOK in $(BOOKS) ; do \
	  cd $$BOOK; \
	  make clean; \
	  cd ..; \
	done;

allclean:
	for BOOK in $(BOOKS) ; do \
	  cd $$BOOK; \
	  make allclean; \
	  cd ..; \
	done;
