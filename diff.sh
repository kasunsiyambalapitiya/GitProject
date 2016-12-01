#!/bin/bash
# two commits are passed as arguments



#count the no of modifications
countModification(){
mkdir -p tempFiles
git difftool -y -x "diff -c" $1 $2 | awk '{if ($1=="!")print $1;}' > ./tempFiles/diffChanges.txt

# for testing echoing the no of lines
noChanges=$(cat diffChanges.txt | wc -l)
echo $noChanges
}

countModification $1 $2

