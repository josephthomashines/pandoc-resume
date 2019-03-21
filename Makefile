
.PHONY: all pdf jpg

pdf:
	pandoc -o "resume.pdf" -s "markdown/resume.md" "--template=./latex/resume.latex"

jpg:
	convert -quality 100 -density 600x600 "resume.pdf" "resume"-%d.jpg

all:
	make pdf && make jpg
