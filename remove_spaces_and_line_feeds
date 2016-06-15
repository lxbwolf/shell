#!/bin/sh

#删除空格和换行
touch tmp_file
NO_FEED=`tr '\n' ' ' < $1`
echo ${NO_FEED} > $1
#sed -e '/^$/d' $1
sed 's/\ //g' $1 > tmp_file
cat tmp_file > $1
#sed 's/\n//g' $1 > tmp_file
#cat tmp_file > $1
rm tmp_file
echo 'OK DONE'
