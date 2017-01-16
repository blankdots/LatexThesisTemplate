## LaTeX Thesis Template

This template was made for a PHD thesis, but it is also intended it to be used by students from mostly from [Faculty of Computer Science, Alexandru Ioan Cuza University of Iasi, Romania](www.info.uaic.ro).
The template itself is based and adapted from the MIT Thesis format available at http://web.mit.edu/thesis/tex/ .

Students should also consult: http://profs.info.uaic.ro/~mdiac/other/licenta2010/ghid_licenta2010.pdf .

### Working with LaTeX

In order to work with LaTeX and this template a specialised software could be used such as:
* https://github.com/sharelatex/sharelatex with its online version https://www.sharelatex.com/
* one of the software recommended by: https://www.latex-project.org/get/
* text editor with syntax highlighting such as https://atom.io with https://atom.io/packages/language-latex

### Building the template

In order to build the template you require one of the software above or [Gradle](https://gradle.org/) or pdflatex and bibtex command:

#### pdflatex and bibtex

Execute the following commands to build the main.pdf file:
* `pdflatex main.tex` - will generate the .pdf file without any references
* `bibtex main` - will generate the necessary files for building the references
* `pdflatex main.tex` - will generate the complete `main.pdf` file

#### building with Gradle

Uses the following plugin: https://github.com/csabasulyok/gradle-latex

Build all PDFs with associated bibliography:
```
>./gradlew pdfLatex
```

Clean output and auxiliary files:
```
>./gradlew cleanLatex
```

Use [continuous build ](https://docs.gradle.org/current/userguide/continuous_build.html) (will block and watch file changes):
```
>./gradlew -t pdfLatex
```
