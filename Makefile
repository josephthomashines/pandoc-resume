
.PHONY: clean pdf

clean:
	rm -rf output

pdf:
	mkdir -p output
	mpdf -output-directory output tex/resume.tex
