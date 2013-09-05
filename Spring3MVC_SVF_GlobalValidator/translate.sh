#!/bin/bash
export OLDPATH=$PATH
export PATH=/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.00_patch1/bin:$PATH
sourceanalyzer -b Spring3MVC_SVF_GlobalValidator -clean
sourceanalyzer -b Spring3MVC_SVF_GlobalValidator -source 1.6 -cp "**/*jar" "**/*.java"
sourceanalyzer -b Spring3MVC_SVF_GlobalValidator -source 1.6 -cp "**/*jar" "**/*.jsp"
sourceanalyzer -b Spring3MVC_SVF_GlobalValidator "**/*.xml"
sourceanalyzer -b Spring3MVC_SVF_GlobalValidator "**/*.properties"
export PATH=$OLDPATH 
sourceanalyzer -v

