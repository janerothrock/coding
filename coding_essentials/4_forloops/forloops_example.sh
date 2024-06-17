#!/bin/bash

# basic example
for string in {a..d}; do
    echo $string
done

# nested for loops
for num in {1..4}, do
    for alpha in {a..d}; do
        echo ${num}-$alpha
    done
done

# making directory tree and putting files in
for sub in sub-{1..5}; do
    mkdir $sub
    touch ${sub}/foo_${sub}.txt
done

# wildcards: * will match any number of letters after "sub-"
#       example: will match sub-1234 AND sub-yes AND sub-1
# ? will only match exactly one character after "sub-"
#       example: sub-? will match sub-1 but NOT sub-1234
for sub_dir in sub-*; do
    touch ${sub_dir}/bar_${sub_dir}
done