#!/bin/bash
#argument  variable
$1

save(){
cloc "$1" > cloc.txt

#selecting only sum

egrep "SUM" cloc.txt > afterEgrep.txt
# trim the spaces and saving it
noOfLines=$( cat afterEgrep.txt | tr -s " " | cut -d " " -f5 )

echo $noOfLines
}

save $1
