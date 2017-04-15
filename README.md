# Example for a multi-level l3build project structure

The files in this repository exemplify a complex document structure where it could be useful to teach l3build about subdirectories.

To compile the (fictional) documentation, which is found in [`doc.dtx`](doc.dtx), the following process has to be performed.

1. The `*.ins` files in the two subdirectories [`dirone`](dirone) and [`dirtwo`](dirtwo) collect code from the `*.dtx` files beside them and compose them into LaTeX source code files.
2. In a real project, these `*.tex` files exemplify the documented package. They are to be compiled into PDFs.
3. These PDFs are then, along with the source code that generated them (the `*.tex` files) included as images and listings into the main documentation.


# The pull requests and what they do

Subdirectory globbing is needed to unpack from the `*.ins` in subdirectories and typeset the `*.tex` inside them. The `typesetsilent` variable would process the `*.tex` files in the subdirectory before their resulting PDFs are needed for compiling the main documentation, which is the only one to be shipped out. And finally, a `docfiledir` could be useful to keep this whole mess separate from tests, the package code and other project metadata.
