#!/bin/bash
export OLDPATH=$PATH
export PATH=/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.00_patch1/bin:$PATH
sourceanalyzer -b Spring2MVC_Programatically -clean
sourceanalyzer -b Spring2MVC_Programatically -source 1.6 -cp "**/*jar" "**/*.java"
sourceanalyzer -b Spring2MVC_Programatically -source 1.6 -cp "**/*jar" "**/*.jsp"
sourceanalyzer -b Spring2MVC_Programatically "**/*.xml"
sourceanalyzer -b Spring2MVC_Programatically "**/*.properties"
export PATH=$OLDPATH 
sourceanalyzer -v

