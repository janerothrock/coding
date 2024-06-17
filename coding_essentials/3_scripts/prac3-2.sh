#!/bin/bash

foo=aaa-bbb_ccc
bar=${foo#*-}

echo ${foo%-*}
echo ${bar%_*}
echo ${foo#*_}