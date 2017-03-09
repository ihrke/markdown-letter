# markdown-letter

Letters in markdown using LaTeX.

- [markdown-paper](https://github.com/ihrke/markdown-paper) for template for a scientific paper.
- [markdown-talk](https://github.com/ihrke/markdown-talk) for template for a beamer-based presentation.
- [markdown-notes](https://github.com/ihrke/markdown-notes) for template for note-taking.

The source is written in [markdown](https://daringfireball.net/projects/markdown/) and translated to latex using [pandoc](http://pandoc.org/) and customized templates located in the `templates` folder.

The `Makefile` details how the translation works. If you are on linux, simply calling `make` in the parent directory will compile the report to a pdf-format if all dependencies are installed. Edit the variables in the Makefile to choose a template (located in `./templates`).

## Usage

1. Install the dependencies

    ~~~{bash}
    sudo apt-get install pandoc pandoc-citeproc
    pip install pandoc-fignos
    ~~~
2. Clone this repository

    ~~~{bash}
    git clone
    ~~~
3. Edit `Makefile` to choose a template
4. Write letter in `letter.md`, compile with `make`

## Recommended Editor/Tools

I think it works very nicely to write markdown-based papers in the [atom](https://atom.io/) editor. The following packages are useful:
- [markdown-preview](https://github.com/burodepeper/language-markdown) for nice syntax highlighting
- [pdf-view](https://github.com/izuzak/atom-pdf-view) for viewing the PDF in Atom directly

## Dependencies

- [pandoc](http://pandoc.org/)
- a [latex](https://www.latex-project.org/)-distribution (e.g., [texlive](https://www.tug.org/texlive/)) including [bibtex](http://www.bibtex.org/)

---

Matthias Mittner <matthias.mittner@uit.no>
