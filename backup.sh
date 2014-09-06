#!/bin/sh
cd /backups/exam
UploadBakName=exam_upload_$(date +%y%m%d).tar.gz
tar zcvf $UploadBakName /opt/www/exam/public/uploads
SqlBakName=exam_sql_$(date +%y%m%d).tar.gz
/usr/bin/mysqldump -uexam -pexam2014 exam>backup.sql
tar zcvf $SqlBakName backup.sql
rm -f backup.sql
find . -name "*.tar.gz"  -ctime +7 | xargs rm