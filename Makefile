
.PHONY: all pdf jpg

pdf:
	pandoc -o "resume.pdf" -s "markdown/resume.md" "--template=./latex/resume.latex"
