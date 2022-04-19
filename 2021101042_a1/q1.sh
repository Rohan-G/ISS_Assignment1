#!/bin/bash
#a
sed '/^$/d' quotes.txt

#b
awk '!original[$0]++' quotes.txt