#!/bin/bash

if [ 1 == 1 ]; then
    echo true
    echo a
    echo foo
elif [ c == c ]; then
    echo c
    echo cccc
else
    echo false
    echo b
    echo bar
fi

#You can also stitch together multiple statements left-to-right
#When using && or || you NEED to keep exit status in mind
if [ 1 == 2 ] && [ a == a ]; then
    echo true
    echo a
    echo foo
elif [ c == c ]; then
    echo c
    echo cccc
else
    echo false
    echo b
    echo bar
fi

#Because [ 1 == 2 ] is not true, it returns a non-zero exit status..
#   so the ambersands will not even be executed..
#   so the script moves onto elif.

#Can also have NOTs!
[ 1 != 1]

#Can also have language statements
[ 1 == 1 ]
[ 1 != 2 ]
[ 2 -lt 3 ]
[ 3 -gt 2 ]
[ 1 -eq 1 ]
[ 2 -ge 2 ]
[ 2 -le 2 ]
[ ! 2 -gt 3 ] #inverting statements are 

[ -d foo ] # a directory exists named foo
[ -f file.txt ] # a file exists named file.txt
[ -e foo ] # something named foo exists
[ -z foo ] # the variable foo is empty
[ -s file.txt ] # file.txt has bits