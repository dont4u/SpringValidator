#!/bin/bash
export OLDPATH=$PATH
export PATH=/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.00_patch1/bin:$PATH
sourceanalyzer -b Spring2MVC_Configuration -clean
sourceanalyzer -b Spring2MVC_Configuration -source 1.6 -cp "**/*jar" "**/*.java"
sourceanalyzer -b Spring2MVC_Configuration -source 1.6 -cp "**/*jar" "**/*.jsp"
sourceanalyzer -b Spring2MVC_Configuration "**/*.xml"
sourceanalyzer -b Spring2MVC_Configuration "**/*.properties"
export PATH=$OLDPATH 
sourceanalyzer -v

