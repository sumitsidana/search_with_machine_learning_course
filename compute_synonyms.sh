#!/bin/bash

while read i; do
    echo -e "synonyms for $i:"
    echo  -e $i | ~/fastText-0.9.2/fasttext nn /workspace/datasets/fasttext/title_model.bin
done < week3/names.txt
