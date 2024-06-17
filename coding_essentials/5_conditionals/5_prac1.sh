#!/bin/bash

# Use nested for loops & conditionals to produce output in Figure 5.
for i in {1..5}; do
    for letter in {a..d}; do
        if [ $i -le 2 ]; then
            echo $i foo-${letter}
        elif [ $i == 3 ]; then
            echo $i foobar-${letter}
        else
            echo $i bar-${letter}
        fi
    done
done