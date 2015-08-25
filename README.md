Written in 2010-2015 by Pieter Hintjens, pieter@hintjens.com, unless 
otherwise specified.

To the extent possible under law, the author has dedicated all copyright 
and related and neighboring rights to this software to the public domain 
worldwide. This software is distributed without any warranty.

You should have received a copy of the CC0 Public Domain Dedication along 
with this software. If not, see:

    <http://creativecommons.org/publicdomain/zero/1.0/>.

=========================================================================

These are the tools I use to build my books. They are not packaged or 
documented for public use. I'm not accepting pull requests or patches
at this stage.

Required Linux packages:

- rasterizer
- pygmentize
- Perl Tree::Trie

## Workflow

# Edit each chapter as a file chnn.txt
# run ./build in produce
# this produces ODF, HTML, MD files
# for printable PDF, load ODF in LibreOffice and save as PDF/A-a1.

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


