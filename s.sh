#!/bin/zsh

cd /Users/kry.davidek/Documents/vysoka-skola/plin-diplomova-prace/plin-diplomka

echo -e "\n\n### Converting Markdown to LaTeX ###\n\n"

rm tex/*

for FILE in markdown/*.md; do
  pandoc --wrap=none ${FILE} -o "${FILE%.md}.tex"
  vlna -r -l -v KkSsVvZzOoUuAaIi assets/tex/*
  vlna -r -l -v KkSsVvZzOoUuAaIi "${FILE%.md}.tex"
  sed -ie 's/[[:space:]][[:space:]]*\\parencite/~\\parencite/g' "${FILE%.md}.tex"
  sed -ie 's/\\section/\\chapter/g' "${FILE%.md}.tex"
  sed -ie 's/\\subsection/\\section/g' "${FILE%.md}.tex"
  sed -ie 's/\\subsubsection/\\subsection/g' "${FILE%.md}.tex"
  sed -ie 's/\\paragraph/\\subsubsection/g' "${FILE%.md}.tex"
  sed -ie 's/\s\\%/\~\\%/g' "${FILE%.md}.tex"
  sed -ie 's/afixů\s*„/afixů „/g' "${FILE%.md}.tex"
  sed -ie 's/--\\textgreater{}/\$\\rightarrow\$/g' "${FILE%.md}.tex"
  sed -ie 's/\\textless{}\$\\rightarrow\$/\$\\leftrightarrow\$/g' "${FILE%.md}.tex"
  
  sed -ie 's/\\chapter{Úvod}\\label{uxfavod}/'\
'\\chapter\*{Úvod}\\label{uvod}\\addcontentsline{toc}{chapter}{Úvod}/g' "${FILE%.md}.tex"
  sed -ie 's/\\chapter{Závěr}\\label{zuxe1vux11br}/'\
'\\chapter\*{Závěr}\\label{zaver}\\addcontentsline{toc}{chapter}{Závěr}/g' "${FILE%.md}.tex"

# Remove from TOC repeated subsections
  sed -ie 's/\\subsection{Historie}\\label{historie\([-[[:digit:]]]*\)}/'\
'\\subsection\*{Historie}\\label{historie-\1}/g' "${FILE%.md}.tex"
  sed -ie 's/\\subsection{Současný stav}\\label{souux10dasnuxfd-stav\([-[[:digit:]]]*\)}/'\
'\\subsection\*{Současný stav}\\label{souux10dasnuxfd-stav-\1}/g' "${FILE%.md}.tex"
  sed -ie 's/\\subsection{Jazyk}\\label{jazyk\([-[[:digit:]]]*\)}/'\
'\\subsection\*{Jazyk}\\label{jazyk-\1}/g' "${FILE%.md}.tex"

  rm "${FILE%.md}.texe"
  rename 's/^markdown(.*)/tex$1/' "${FILE%.md}.tex"
done

# echo -e "\n\n### Commiting to git ###\n\n"

git add *
git commit -m 'Change'

# echo -e "\n\n### Force pushing to GitHub ###\n\n"

git push -f origin main




