#!/bin/bash

for subnum in {1..5}; do
    for sesnum in {a..c}; do
        sespath=sub-${subnum}/ses-${sesnum}
        for filenum in {1..4}; do
            filename_base=${sespath}/sub-${subnum}_ses-${sesnum}_file-${filenum}
            mv ${filename_base}_foo.txt ${filename_base}_bar.txt
            echo "foo bar" > ${filename_base}_bar.txt
        done
    done
done