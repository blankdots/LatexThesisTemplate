## LaTeX Thesis Template

This template was made for a PhD thesis, but it is also intended to be used by students from the [Faculty of Computer Science, Alexandru Ioan Cuza University of Iasi, Romania](https://www.info.uaic.ro).
The template is based on the **MIT thesis LaTeX template** (mitthesis class) from [http://web.mit.edu/thesis/tex/](http://web.mit.edu/thesis/tex/) and [CTAN](https://ctan.org/pkg/mitthesis). It uses the current 2023+ template that meets MIT Libraries formatting requirements and supports pdfLaTeX and LuaLaTeX. **TeX Live 2022 or later is required.**

Students should also consult: https://info.uaic.ro/lucrarea-de-licenta/ .

### Working with LaTeX

In order to work with LaTeX and this template a specialised software could be used such as:
* [Overleaf](https://www.overleaf.com) (online editor; ShareLaTeX is now part of Overleaf)
* one of the software recommended by: https://www.latex-project.org/get/

### Building the template

You need **TeX Live 2022 or later** (or equivalent). Build with pdflatex and bibtex:

1. `pdflatex main.tex` — first pass (no references yet)
2. `bibtex main` — build bibliography
3. `pdflatex main.tex` — second pass
4. `pdflatex main.tex` — final pass for correct references

**EPS figures:** The sample chapters use `figures/sample.eps`. With pdflatex, run `epstopdf figures/sample.eps` once to create `figures/sample.pdf`. If you skip this, the document still compiles but the figure appears as a placeholder.

Alternatively use LuaLaTeX instead of pdflatex if you use the template’s Unicode font options.

