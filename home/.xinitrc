#!/usr/bin/env bash
xrdb -merge $HOME/.Xresources
urxvtc -e true > /dev/null 2>&1
if [ $? -eq 2 ]
then
  urxvtd -q -o -f > /dev/null 2>&1
fi
IGNOREEOF=3 urxvtc -C -ls
emacsclient -e t > /dev/null 2>&1
if [ $? -eq 1 ]
then
  emacs --daemon > /dev/null 2>&1
fi
emacsclient -cqe '(direx:jump-to-directory-with-context "~" "/")' > /dev/null
