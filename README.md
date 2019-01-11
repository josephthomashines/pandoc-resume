# pandoc-resume

To run:

- [Install Docker](https://www.docker.com/)
- `git clone {repo}`
- `cd pandoc-resume`
- `docker build -t pandoc-resume .`
- `docker run -it pandoc-resume`

__or__

- `docker run -it josephthomashines/dev:pandoc-resume`

Now in the container"

- `cd pandoc-resume`
- `make`

View output in `output/`

Feel free to edit files and run `make` to build.
`make clean` is available to clean the output folder.

---

### Check out the .jpg's of this resume [here.](https://josephthomashines.com/#resume "My Resume")

# Why?

pandoc is a general markup converter that allows many different file formats.
In my case, I use a singular markdown (.md) file which contains a loose structure and all the content of my resume.
This repo is now setup so that when I need to modify my resume, I change on markdown file, run my Makefile, and get back a .pdf, .docx, and .html file that all look the same.
This allows me to easily maintain the content and structure of my resume across mediums very easily.


