#!/bin/bash
touch "speech.txt"
rm "speech.txt"
touch "speech.txt"
file="quotes.txt"
IFS="~"
while read -r line;
do
    read -a q <<< "$line"
    echo "${q[1]} once said, \"${q[0]}\""| sed 's/ \(.\)$/\1/' >>"speech.txt"
done <$file
