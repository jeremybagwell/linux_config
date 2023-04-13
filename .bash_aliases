# .aliases

### Easy edit/re-source bashrc ###
alias src='source ~/.bashrc'
alias vrc='vi ~/.bashrc'

### Building Aliases ###
alias bjr='DEBUGORRELEASE=release make build'
alias bjd='DEBUGORRELEASE=debug make build'
alias bjb='bjam -j20 release --packages=products,tests; bjam -j20 debug --packages=products,tests'
alias bjlr='bjam -q -j 20 debug-symbols=on --packages=products release'
alias bjlrt='bjam -q -j 8 debug-symbols=on --packages=products,tests release'
alias bjldt='bjam -q -j 20 debug-symbols=on --packages=products,tests debug'

### Old build aliases ###
#alias bjr='bjam -j20 release --packages=products,tests'
#alias bjd='bjam -j20 debug --packages=products,tests'

alias pgclipm='pgcli -U dbmgr patientdata'
alias pgclistealth='pgcli -U dbmgr stealth'

alias agrep='ack-grep'

#alias fdr='cd /mnt/denm1bnas02/data03/data03/DATADFS3/TechnicalServices/FDR_Repository/Engineering'

alias scratch='cd /mnt/netapp/scratch'
alias tp='cd /home/kolacc1/src/toolspackage'
alias pg='cd /mnt/netapp/pg'

alias proj='cd $PROJECT_ROOT'

### Project aliases (Sets PROJECT_ROOT and cds to it. Component aliases below are relative to wherever PROJECT_ROOT is set ###
alias cran='export PROJECT_ROOT=/home/kolacc1/src/cranial; cd $PROJECT_ROOT; setPath'
alias 3dc='export PROJECT_ROOT=/home/kolacc1/src/3dcalapplication; cd $PROJECT_ROOT; setPath'
alias main='export PROJECT_ROOT=/home/kolacc1/src/stealthapplication; cd $PROJECT_ROOT; setPath'
alias master='export PROJECT_ROOT=/home/kolacc1/src/stealthapplication_master; cd $PROJECT_ROOT; setPath'
alias release='export PROJECT_ROOT=/home/kolacc1/src/stealthapplication_release; cd $PROJECT_ROOT; setPAth'
alias 102='export PROJECT_ROOT=/home/kolacc1/src/stealthapplication_1.0.2; cd $PROJECT_ROOT; setPath'
alias 103='export PROJECT_ROOT=/home/kolacc1/src/stealthapplication_1.0.3; cd $PROJECT_ROOT; setPath'
alias 110='export PROJECT_ROOT=/home/kolacc1/src/stealthapplication_1.1.0; cd $PROJECT_ROOT; setPath'
alias 120='export PROJECT_ROOT=/home/kolacc1/src/stealthapplication_1.2.0; cd $PROJECT_ROOT; setPath'
alias 130='export PROJECT_ROOT=/home/kolacc1/src/stealthapplication_1.3.0; cd $PROJECT_ROOT; setPath'
alias dmri='export PROJECT_ROOT=/home/kolacc1/src/stealthapplication_dmri; cd $PROJECT_ROOT; setPath'
alias dmri2='export PROJECT_ROOT=/home/kolacc1/src/stealthapplication_dmri2; cd $PROJECT_ROOT; setPath'

### Component aliases ###
alias sapp='cd $PROJECT_ROOT/ApplicationHome'
alias plan='cd $PROJECT_ROOT/Plan'
alias loc='cd $PROJECT_ROOT/LocProcessingService'
alias us='cd $PROJECT_ROOT/UltrasoundService'
alias pie='cd $PROJECT_ROOT/PatientIEBridge/PatientIEBridge'
alias mml='cd $PROJECT_ROOT/MML'
alias mcl='cd $PROJECT_ROOT/MCL'
alias dfcl='cd $PROJECT_ROOT/DFCL/DFCL'
alias tru='cd $PROJECT_ROOT/TRU'
alias acpc='cd $PROJECT_ROOT/ACPC'
alias pm='cd $PROJECT_ROOT/PatientManager/PatientManager'
alias gfw='cd $PROJECT_ROOT/GuiFramework'
alias qml='cd $PROJECT_ROOT/GuiFramework/qml'
alias ster='cd $PROJECT_ROOT/StereotacticRegistrationService'
alias wft='cd $PROJECT_ROOT/WorkflowTaskControllers'
alias wfm='cd $PROJECT_ROOT/WorkflowManagerService'
alias mre='cd $PROJECT_ROOT/MRE'
alias pds='cd $PROJECT_ROOT/PatientDataService'

#alias sl='sl -e'
#alias LS='LS -e'
