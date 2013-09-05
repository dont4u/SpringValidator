#!/bin/bash
export OLDPATH=$PATH
export PATH=/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.00/bin:$PATH
sourceanalyzer -v
auditworkbench -Xmx3000M scan.fpr &
export PATH=$OLDPATH 
sourceanalyzer -v