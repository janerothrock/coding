#!/bin/bash

# Looping through two arrays of the same length at the same time.
arr_element=(earth fire air water)
arr_avatar=(Kyoshi Roku Aang Korra)

for ((c = 0; c < ${#arr_element[@]}; c++)); do
    echo "The ${arr_element[$c]} avatar is ${arr_avatar[$c]}."
done
# Note the use of the dollar sign both before the array AND before the index.

# The exclamation points goes through all elements in an array. Useful for for loops.
for c in ${!arr_avatar[@]}; do
    echo "${arr_avatar[$c]} bends ${arr_element[$c]}."
done

# Can also control a for loop by a value set in an outer loop.
for i in {1..4}; do
    for ((j = 1; j <= $i; j++)); do
        echo $i bar
    done
done

# While loops are helpful to loop something until some conditional is met.

c=0
max=${#arr_avatar[@]}
while [ $c -lt $max ]; do
    echo ${arr_avatar[$c]} bends ${arr_element[$c]}
    let c+=1
done

# Use a while loop to build a string variable!
foo="a"
for i in {b..g}; do
    foo+="$i"
done
echo $foo

# empty a variable
unset foo
echo $foo

# Can even make strings comma separated!
foo="" # This variable starts out empty
for i in {1..7}; do
    foo+="${i},"
done
echo $foo
unset $foo

# Just making some dummy files
for file in {1..3}; do
    if [ ! -f prac_${file}.txt ]; then
        touch prac_${file}.txt
    fi
done

# Add variables to an array and then echo length & contents.
arr_foo=()
for prac in $(ls prac*); do
    arr_foo+=($prac)
done
echo length=${#arr_foo[@]}
echo arr=${arr_foo[@]}