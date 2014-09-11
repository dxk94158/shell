#!/bin/bash
echo `date +'[%F %T]start'`
LASTD=`date +'%Y%m%d'`
mkdir -p   /opt/htdocs/durexhuodong/$LASTD

/opt/mysql-5.1.59/bin/mysql -uroot -p1234  --default-character-set=gb2312 test -e 'SELECT * FROME test;' >  /tmp/backup/$LASTD/test$LASTD.xls

echo `date +'[%F %T]end'` 