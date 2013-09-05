#!/bin/bash
export OLDPATH=$PATH
export PATH=/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.00_patch1/bin:$PATH
sourceanalyzer -v
sourceanalyzer -b Spring3MVC_JSR303_GlobalValidator -scan -f scan.fpr -Xmx6000M -64 -no-default-rules -rules /Users/alvaro/Desktop/SpringValidators.xml
export PATH=$OLDPATH 
sourceanalyzer -v