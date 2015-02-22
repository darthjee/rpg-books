NAME=cenario-steam
FILE=$(NAME).tex
DVI=$(NAME).dvi
PDF=$(NAME).pdf
PS=$(NAME).ps

ALLNEEDS=$(FILE) */ Makefile *.tex */*

all:
	make DVI=$(DVI) NAME=$(NAME) $(DVI)

dvi:
	make DVI=$(DVI) NAME=$(NAME) $(DVI)

pdf:
	make PDF=$(PDF) NAME=$(NAME) $(PDF)

ps:
	make PS=$(PS) NAME=$(NAME) $(PS)

$(DVI): $(ALLNEEDS)
	latex $(FILE)
	latex $(FILE)

$(PDF): $(ALLNEEDS)
	make DVI=$(DVI) NAME=$(NAME) $(DVI)
	dvipdf $(NAME).dvi $(PDF)

$(PS): $(ALLNEEDS)
	make DVI=$(PDF) NAME=$(NAME) pdf
	pdf2ps $(NAME).pdf $(PS)
clean:
	-rm $(NAME).aux
	-rm $(NAME).log
	-rm $(NAME).toc
allclean:
	-rm *.dvi
	-rm *.pdf
	-rm *.ps
	make clean
