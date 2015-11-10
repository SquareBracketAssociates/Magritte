#!/usr/bin/env bash
set -euo pipefail # bash strict mode
# set -x # debug

# the chapter should be passed as argument
[ -f "$1" ] || fail "No such Pillar source file '$1'"

./pillar export --to='LaTeX by chapter' $1
cd book-result/`dirname $1`

# check and install symlinks
[ -d root ] || ln -s .. root
[ -f latexmkrc ] || ln -s root/latexmkrc .

# activate the @() pattern matching below
shopt -s extglob
latexmk `basename ${1%%.@(pillar|pier)}`
