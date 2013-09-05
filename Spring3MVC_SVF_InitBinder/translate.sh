#!/bin/bash
export OLDPATH=$PATH
export PATH=/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.00_patch1/bin:$PATH
sourceanalyzer -v
sourceanalyzer -b Spring3MVC_SVF_InitBinder -clean
mvn -Dfortify.sca.verbose=true -Dfortify.sca.tests.exclude=true -Dfortify.sca.debug=false -Dfortify.sca.Xmx=3G -Dfortify.sca.64bit=true -Dfortify.sca.source.version=1.6 com.fortify.ps.maven.plugin:maven-sca-plugin:3.50:translate -Dfortify.sca.buildId=Spring3MVC_SVF_InitBinder
sourceanalyzer -b Spring3MVC_SVF_InitBinder src/main/webapp -source 1.6
sourceanalyzer -b Spring3MVC_SVF_InitBinder src/main/resources -source 1.6
export PATH=$OLDPATH 
sourceanalyzer -v