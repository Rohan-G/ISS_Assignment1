#!/bin/bash

read -r line
let len=${#line}

#a
for ((i = $len-1; i >= 0; i--))
do
    echo -n ${line[0]:$i:1}
done
echo

#b
for ((i = $len-1; i >= 0; i--))
do
    echo -n ${line[0]:$i:1} | tr "a-z" "b-za" | tr "A-Z" "B-ZA"
done
echo

#c
for ((i = $len/2-1; i >= 0; i--))
do
    echo -n ${line[0]:$i:1}
done
for ((i = $len/2; i < $len; i++))
do
    echo -n ${line[0]:$i:1}
done
echo