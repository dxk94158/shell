#!/bin/bash
# export table fitment to excel
# author:frank
# date:2014-09-08

user=root
pass=1234
db=mbtiretool
table=fitment
dir=/backup/mbtiretool/
file=fitment.xls

mysql --default-character-set='gb2312' -u${user} -p${pass} -e "select * from ${db}.${table}" > ${dir}${file}