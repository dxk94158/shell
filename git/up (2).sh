#!bin/sh
#echo $PATH
cd /opt/www/liuwan
unset GIT_DIR
/usr/sbin/git pull
rsync -av --progress --partial --delete -e "ssh -c arcfour" --exclude-from=/opt/www/exclude1.list /opt/www/liuwan  root@192.168.60.62:/opt/www/
rsync -av --progress --partial --delete -e "ssh -c arcfour" --exclude-from=/opt/www/exclude1.list /opt/www/liuwan  root@192.168.60.63:/opt/www/
rsync -av --progress --partial --delete -e "ssh -c arcfour" --exclude-from=/opt/www/exclude1.list /opt/www/liuwan  root@192.168.60.7:/opt/htdocs/liuwan/
sleep 2

cd /opt/www/liuwan-media
/usr/sbin/git pull
sleep 2
#rsync -av --progress --partial --delete -e "ssh -c arcfour" --exclude-from=/opt/www/exclude.list /opt/www/liuwan-media  root@192.168.60.62:/opt/www/
#rsync -av --progress --partial --delete -e "ssh -c arcfour" --exclude-from=/opt/www/exclude.list /opt/www/liuwan-media  root@192.168.60.63:/opt/www/
#rsync -av --progress --partial --delete -e "ssh -c arcfour" --exclude-from=/opt/www/exclude.list /opt/www/liuwan-media  root@192.168.60.7:/opt/htdocs/liuwan/
