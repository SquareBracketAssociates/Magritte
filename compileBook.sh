#!/usr/bin/env bash

set -e

cd book-result
cp ../BookletMagritte.tex .
ln -s -f ../figures .
texfot latexmk BookletMagritte
