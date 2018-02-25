
@echo off

::macros for normal windows commands
doskey c=cls
doskey l=dir
doskey e=exit

:: Navigation
doskey ..=cd ..
doskey ...=cd ../..
doskey ....=cd ../../..
doskey .....=cd ../../../..
doskey ~=cd /d %USERPROFILE%
doskey /=cd \
doskey \=cd \

@echo on
