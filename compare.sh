#!/bin/bash
domain1=http://teana.dongfeng-nissan.com.cn
domain2=http://teana-test.vastrek.cn
path1=/home/frank/1
path1=/home/frank/2

file=(/index.html /js/loading_img.js)  //对比的文件列表
for i in ${file[@]} 
do
echo $i

URL1=$domin1$i
URL2=$domin2$i
file1=$path1$i
file2=$path2$i

cd $path
rm -f $file1 $file2
wget -O ${file1} -T 60 ${URL1}
wget -O ${file2} -T 60 ${URL2}
if [ ! -e "${file1}" ];
then 
echo $URL1"404" >>$path1/result.log
exit
fi
if [ ! -e "${file2}" ];
then 
echo $URL2"404" >>$path1/result.log
exit
fi

md51=`md5sum ${file1}|awk '{print $1}'`
md52=`md5sum ${file2}|awk '{print $1}'`
#echo $md51
#echo $md52
if  [ "${md51}" = "${md52}" ] 
then 
   echo $URL1	$URL2	"yes" >>$path1/result.log
else 
   echo $URL1	$URL2	"no" >>$path1/result.log
fi

done