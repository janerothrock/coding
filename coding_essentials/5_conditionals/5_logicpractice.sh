#!/bin/bash

# 1 = file exists
# 2 = has bits

[ 1 == 1 ] && [ 2 == 2 ] && echo "got thru line 1" ||
[ 1 == 1 ] && [ 2 == 2 ] && echo "got thru line 2" ||
[ 1 == 1 ] && echo "got thru line 3"

# [ -f $filename ] && [ -s $filename ] && echo -e "file has BITS: \n\tsubject ${subnum}, session ${sesnum}, file ${filenum}\n" ||
# [ -f ${filename} ] && [ ! -s ${filename} ] && echo -e "file is EMPTY: \n\tsubject ${subnum}, session ${sesnum}, file ${filenum}\n" ||
# [ ! -f ${filename} ] && echo ${filename} "does not exist" # horizontal conditional