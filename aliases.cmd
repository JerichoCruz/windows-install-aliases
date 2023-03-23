@echo off
doskey x=exit
doskey ls=dir $*
doskey .=dir
doskey ..=cd ..
doskey cd=cd /d $*
doskey clear=cls
doskey mv=ren $*
doskey ps=tasklist $*
doskey kill=taskkill /IM $*