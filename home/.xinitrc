#!/usr/bin/env bash
xrdb -merge $HOME/.Xresources
emacsclient -e t > /dev/null 2>&1
if [ $? -eq 1 ]
then
  emacs --daemon > /dev/null 2>&1
fi
(emacsclient -cqe '(let ((dir default-directory)) (direx:find-directory "/") (direx:goto-item-for-tree (direx:make-directory dir)) (direx:expand-item) (cd dir))' > /dev/null 2>&1  < /dev/null &)
urxvtc -e true > /dev/null 2>&1
if [ $? -eq 2 ]
then
  urxvtd -q -o -f > /dev/null 2>&1
fi
IGNOREEOF=3 urxvtc -C -ls
wait
