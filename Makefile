.PHONY: build run

.SUFFIXES:

OPEN = $(shell which xdg-open || which open)

all:
	@echo "make clean -- cleans cv build"
	@echo "make setup -- setups tex enviorment"
	@echo "make cv    -- builds cv"

clean:
	rm -rf cv.aux cv.log cv.pdf

setup:
	sudo tlmgr update --self
	sudo tlmgr install datetime fmtcount background everypage titlesec enumitem

cv: clean
	xelatex cv.tex
	$(OPEN) cv.pdf