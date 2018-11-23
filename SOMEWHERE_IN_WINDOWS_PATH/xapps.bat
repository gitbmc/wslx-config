@echo off
REM cd %HOMEDRIVE%%HOMEPATH%
REM bash --init-file $HOME/bin/xapps
REM ubuntu1804 run $HOME;bin/xapps DISPLAY=%DISPLAY%
wsl $HOME/.xapps %DISPLAY%