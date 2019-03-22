
.PHONY: all pdf jpg

pdf:
	pandoc -o "output/resume.pdf" -s --pdf-engine="xelatex" "markdown/resume.md" "--template=./latex/resume.latex"

jpg:
	convert -quality 100 -density 600x600 "output/resume.pdf" "output/resume"-%d.jpg

all:
	make pdf && make jpg
