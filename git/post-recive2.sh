#env -i git archive master | tar -x -C /opt/www/liuwanwebroot
echo $PATH
cd /opt/www/liuwanwebroot/test||exit
echo $(pwd)
#���ǹؼ�������
unset GIT_DIR
git pull
echo "Զ�̸������"
exec git-update-server-info