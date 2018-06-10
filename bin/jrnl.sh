#! /bin/sh

name=$(date '+%d-%m-%Y')
file=~/doc/jrnl/$name

touch $file
echo "****************************" >> $file
date >> $file
echo "****************************" >> $file
echo "" >> $file

# vim -x -u ~/doc/jrnl/.vimrc +100 $file
vim +100 $file
