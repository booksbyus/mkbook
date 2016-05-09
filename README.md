Written in 2010-2016 by Pieter Hintjens, pieter@hintjens.com, unless 
otherwise specified.

To the extent possible under law, the author has dedicated all copyright 
and related and neighboring rights to this software to the public domain 
worldwide. This software is distributed without any warranty.

You should have received a copy of the CC0 Public Domain Dedication along 
with this software. If not, see:

    <http://creativecommons.org/publicdomain/zero/1.0/>.

=========================================================================

To contribute, send a pull request. This project uses 
[ZeroMQ RFC 42](http://rfc.zeromq.org/spec:42) as its contribution process.

These are the tools I use to build my books. They are not packaged or 
documented for public use. I'm not accepting pull requests or patches
at this stage.

* To install, you need all the tools in bin/, somewhere on your path. I
suggest copying them to /usr/local/bin.

* To use, take the directory example/, and copy to a new directory that
represents your book project.


Required Linux packages:

- rasterizer from libbatik-java (Ubuntu) you might also want to install libxmlgraphics-common-java (Ubuntu).
- pygmentize from python-pygments (Ubuntu)
- Perl Tree::Trie

## Workflow

- Edit each chapter as a file chnn.txt
- run ./build in produce
- this produces ODF, HTML, MD files
- for printable PDF, load ODF in LibreOffice and save as PDF/A-a1.

For an index, set the INDEX variable in the .book file to a file
(index.txt is an example) containing one keyword per line. To 
create categories, write "word | category".

E.g.

    belgium | country
    canada | country

The templating system works by inserting symbols from the .book file into
templates. There are a few symbols known to the mkodt script: FILENAME,
INDEX, BREAKS, INSIDE, OUTSIDE, HRIGHT. The others are only known to the
templates.

## Model Document

To check/modify the ODT templates, you have to know how to expand an ODT
file using unzip, then you can copy/paste code from the various ODT sub
files into the templates.

The model directory contains a model.odt that you can use for this purpose.

To format an XML file to be readable:

    xmllint --pretty 1 somefile.xml > x && mv x somefile.xml
