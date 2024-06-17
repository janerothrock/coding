#!/bin/bash

#Write a script that repeats the previous (Lesson 4) for loop 
#   assignment, but only adds content to the text files of 
#   subjects 1-3. Then loop a conditional statement through all 
#   the directories to determine which text files have content 
#   (the ‘z’ and ‘s’ conditional options will be helpful).

for subnum in {1..5}; do
    for sesnum in {a..c}; do
        sespath=sub-${subnum}/ses-${sesnum}
        mkdir -p ${sespath}
        for filenum in {1..4}; do
            filename=${sespath}/sub-${subnum}_ses-${sesnum}_file-${filenum}_foo.txt
            [ ! -f ${filename} ] && touch $filename && echo "creating" ${filename}
            if [ ${subnum} -le 3 ] && [ ! -s ${filename} ]; then #vertical conditional
                echo "foo bar" > ${filename}
            fi
        done
    done
done

for subnum in {1..5}; do
    for sesnum in {a..c}; do
        sespath=sub-${subnum}/ses-${sesnum}
        for filenum in {1..4}; do
            filename=${sespath}/sub-${subnum}_ses-${sesnum}_file-${filenum}_foo.txt
            [ -f $filename ] && [ -s $filename ] && echo -e "file has BITS: \n\tsubject ${subnum}, session ${sesnum}, file ${filenum}\n" ||
            [ -f ${filename} ] && [ ! -s ${filename} ] && echo -e "file is EMPTY: \n\tsubject ${subnum}, session ${sesnum}, file ${filenum}\n" ||
            [ ! -f ${filename} ] && echo ${filename} "does not exist" # horizontal conditional
        done
    done
done

#[ -e $filename ] && [ -s $filename ] && echo ${filename} "has contents" || [ -e $filename ] && [ ! -s ${filename} ] && echo ${filename} "exists but does not have contents" || [ -e $filename ] && echo ${filename} "does not exist" # horizontal conditional