.PHONY: all clean

files = sbmi-talk-2025-abstract.pdf zimolzak-uth-informatics-slides.pdf

all: $(files)

sbmi-talk-2025-abstract.pdf: sbmi-talk-2025-abstract.txt
	pandoc -o $@ $<

zimolzak-uth-informatics-slides.pdf: zimolzak-uth-informatics-slides.txt
	pandoc -t beamer $< -o $@

# -H fix.tex
# This was for package subfig.
# Used in health policy repo.
# May have been fixed by Texlive.

# https://tex.stackexchange.com/questions/426088/texlive-pretest-2018-beamer-and-subfig-collide

# https://stackoverflow.com/questions/54412524/subfig-package-gives-error-undefined-control-sequence-begindocument-error

clean:
	rm -f $(files)
