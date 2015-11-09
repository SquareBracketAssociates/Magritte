#!/usr/bin/env bash
echo ==========================================================
echo Begining of the LaTeX compilation...
echo ==========================================================
cd book-result
echo Compiling PDF from book-result/Magritte/Magritte.tex
cd Magritte
ln -s .. root
lualatex --file-line-error --interaction=batchmode Magritte.tex 2>&1 1>/dev/null
ret=$?
if [[ $ret -ne 0 ]]; then
  cat Magritte.log
  echo "Can't generate the PDF!"
  exit 1
fi
lualatex --file-line-error --interaction=batchmode Magritte.tex 2>&1 1>/dev/null
ret=$?
if [[ $ret -ne 0 ]]; then
  cat Magritte.log
  echo "Can't generate the PDF!"
  exit 1
fi
rm -f *.{vrb,nav,snm,toc,out,aux,log,url}
rm -rf root
cd ..
echo Compiling PDF from book-result/MagritteTutorial/MagritteTutorial.tex
cd MagritteTutorial
ln -s .. root
lualatex --file-line-error --interaction=batchmode MagritteTutorial.tex 2>&1 1>/dev/null
ret=$?
if [[ $ret -ne 0 ]]; then
  cat MagritteTutorial.log
  echo "Can't generate the PDF!"
  exit 1
fi
lualatex --file-line-error --interaction=batchmode MagritteTutorial.tex 2>&1 1>/dev/null
ret=$?
if [[ $ret -ne 0 ]]; then
  cat MagritteTutorial.log
  echo "Can't generate the PDF!"
  exit 1
fi
rm -f *.{vrb,nav,snm,toc,out,aux,log,url}
rm -rf root
cd ..
cd ..
