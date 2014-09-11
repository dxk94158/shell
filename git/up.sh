#!/usr/bin/expect
set timeout 1200;
#spawn sudo su -
#expect "*password for wechat*"  {send "U!D%2cu>W\$UJM_\(\r"}
spawn  git pull
#expect "*yes/no*" { send "yes\r"; exp_continue} 
expect "*wechat@210.14.71.1's password*"  {send "U!%cu>W\$UJM_\(\r"}
expect eof;
