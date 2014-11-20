#env -i git archive master | tar -x -C /opt/www/liuwanwebroot
echo $PATH
cd /opt/www/liuwanwebroot/test||exit
echo $(pwd)
#这是关键啊。。
unset GIT_DIR
git pull
echo "远程更新完毕"
exec git-update-server-info