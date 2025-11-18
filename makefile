.PHONY: all clean

files = sbmi-talk-2025-abstract.pdf zimolzak-uth-informatics-slides.pdf

all: $(files)

sbmi-talk-2025-abstract.pdf: sbmi-talk-2025-abstract.txt
	pandoc -o $@ $<

zimolzak-uth-informatics-slides.pdf: zimolzak-uth-informatics-slides.txt
	pandoc -t beamer $< -o $@

# -H fix.tex

clean:
	rm -f $(files)
