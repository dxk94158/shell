#!/bin/sh
#cd
ftp -n -i 221.123.151.138 <<EOF
user backups backups@2014
bin
prompt on
lcd /backups/exam
passive
mput exam_sql_140729.tar.gz
quit
EOF
exit
