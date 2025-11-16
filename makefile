.PHONY: all

all: sbmi-talk-2025-abstract.pdf zimolzak-uth-informatics-slides.pdf

sbmi-talk-2025-abstract.pdf: sbmi-talk-2025-abstract.txt
	pandoc -o $@ $<

zimolzak-uth-informatics-slides.pdf: zimolzak-uth-informatics-slides.txt
	pandoc -t beamer $< -o $@
# -H fix.tex
