slides := $(wildcard *.md)

all: $(slides:.md=.pdf)

%.pdf: %.md
	docker run --rm -v $(shell pwd):/source -w /source purplekarrot/slides-builder -t beamer --pdf-engine=xelatex $< -o $@

clean:
	rm -f *.pdf

.PHONY: all clean
