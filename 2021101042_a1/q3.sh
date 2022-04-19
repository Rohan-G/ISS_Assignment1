#!/bin/bash

#a
wc --bytes "$1"|awk '{print $1}'

#b
wc -l "$1"|awk '{print $1}'

#c
wc --w "$1"|awk '{print $1}' 

#d
file="$1"
i=1
while read -r line;
do
    echo -n "Line No: <$i> - Count of Words: "
    #wc -w $line| awk '{print $1}'
    echo $line | wc --w | awk '{print "["$1"]"}'
    let i=$i+1
done <$file

#e
while read -r line;
do
    echo $line | tr " " "\n" | tr -cd '[:alnum:]\n'"'"''>>"file1.txt"
done <"$1"
#sort file1.txt | uniq -cd | awk '{print "Word: <" $2 "> - Count of repetition: [" (($1-1)) "]"}'
awk '{ original[$0]++ }; END { for(i in original) { if(original[i] != 1) { print "Word: <" i "> - Count of repetition: [" ((original[i]-1)) "]" } } }' file1.txt
rm "file1.txt"
