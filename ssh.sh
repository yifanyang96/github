#!/usr/bin/expect

set timeout 5
spawn ssh xubaohan@bridge
expect "*password*"
send "123456\r"
expect "$*"
send "ssh xbh@localhost -p28225\r"
set timeout 10
expect "*password*"
send "xbh\r"
expect "$*"
send "ssh yyf@10.88.3.93\r"
set timeout 5
expect "*password*"
send "yyf\r"
interact
