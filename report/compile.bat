rem USAGE: Set the texfile and aux-dir parameters below to the name of the tex files to compile and the directory where auxiliry files should be put. The file name is without .tex postfix and the aux directory needs to exist in beforehand.

set texfile=report
set aux-dir=aux-files

latex %texfile%.tex -aux-directory=%aux-dir%
bibtex %aux-dir%/%texfile%
latex %texfile%.tex -aux-directory=%aux-dir% > aux-files/latex_printout.log
latex %texfile%.tex -aux-directory=%aux-dir% > aux-files/latex_printout.log
dvipdfm %texfile%.dvi
del %texfile%.dvi
%texfile%.pdf