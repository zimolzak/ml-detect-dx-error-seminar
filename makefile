.PHONY: all clean

files = zimolzak-uth-informatics-slides.pdf

imgdeps = img/dxprocess.png img/studyflow-crop.png img/papertitle.png

all: $(files)

zimolzak-uth-informatics-slides.pdf: zimolzak-uth-informatics-slides.txt $(imgdeps)
	pandoc -t beamer $< -o $@

# -H fix.tex
# This was for package subfig.
# Used in health policy repo.
# May have been fixed by Texlive.

# https://tex.stackexchange.com/questions/426088/texlive-pretest-2018-beamer-and-subfig-collide

# https://stackoverflow.com/questions/54412524/subfig-package-gives-error-undefined-control-sequence-begindocument-error

clean:
	rm -f $(files)
