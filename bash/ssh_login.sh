#!/usr/bin/expect

set timeout 3
set login_name "name"
set target_ipaddress [lindex $argv 0]
set target_password "passwd"
set middle_ipaddress "middle_ip"

spawn ssh ${login_name}@${middle_ipaddress}
expect "password:"
send "${target_password}\r"

expect "]*"
send "ssh ${login_name}@${target_ipaddress}\r"
#expect "(yes/no)"
#send "yes\r"
expect "password:"
send "${target_password}\r"

interact
