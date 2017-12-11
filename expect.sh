#! /usr/bin/expect
set mysql_num 0
set php_num 7
set cache_num 1
set timeout -1
cd /lnmp1.4
spawn ./install.sh lnmp

expect "DO NOT Install MySQL/MariaDB"
send "$mysql_num\n"

expect "Install PHP 7.1.7"
send "$php_num\n"

expect "Install TCMalloc"
send "$cache_num\n"

expect "Press any key to install...or Press Ctrl+c to cancel"
send "\n"

expect "Install lnmp V1.4 completed! enjoy it."
send "\n"

interact
