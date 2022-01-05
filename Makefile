.PHONY: main

CC = xelatex
DIST_DIR = dist
SRC_DIR = src
CV_DIR = $(SRC_DIR)/cv
DIST_PDF=$(shell find $(DIST_DIR) -name '*.pdf')

main: $(foreach x, cv-en coverletter compress, $x.pdf)

cv-en.pdf: $(CV_DIR)/cv-en.tex $(CV_SRCS)
	$(CC) -output-directory=$(DIST_DIR) $<

coverletter.pdf: $(SRC_DIR)/coverletter.tex
	$(CC) -output-directory=$(DIST_DIR) $<

compress.pdf:
	@for f in $(DIST_PDF); do ps2pdf -dPDFSETTINGS=/ebook "$$f" "$${f%.*}.min.pdf"; done
clean:
	GLOBIGNORE=.gitkeep rm -f $(DIST_DIR)/*
