#!/bin/bash

for subnum in {1..5}; do
    for sesnum in {a..c}; do
        #mkdir -p $sub-{subnum}/ses-${sesnum}/
        sespath=sub-${subnum}/ses-${sesnum}
        mkdir -p $sespath
        for filenum in {1..4}; do
            touch ${sespath}/sub-${subnum}_ses-${sesnum}_file-${filenum}_foo.txt
        done
    done
done