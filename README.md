Check out the .vue page of this resume [here.](josephhines.xyz/#/resume "My Resume")

# Why?

pandoc is a general markup converter that allows many different file formats.
In my case, I use a singular markdown (.md) file which contains a loose structure and all the content of my resume.
This repo is now setup so that when I need to modify my resume, I change on markdown file, run my Makefile, and get back a .pdf, .docx, and .vue file that all look the same.
This allows me to easily maintain the content and structure of my resume across mediums very easily.

If you came here from my website, that resume page is a vue template generated from a simple markdown file, some CSS, and a little AWK script.

# Thanks to mszep

I struggled initially as the template that pandoc provides was hard to interpret as someone with close to zero LaTeX experience.
When I came across this mszep's repo, I took a look and realized that this would be a good place to start.
mszep's templates were easy to understand and helped me learn how to use pandoc and LaTeX templates on my own.


