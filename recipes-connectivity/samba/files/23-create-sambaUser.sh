#!/usr/bin/expect -f
set user [lindex $argv 0]
set pass [lindex $argv 1]
spawn echo "create samba user $user"
spawn smbpasswd -a $user
expect "New SMB password:"
send "$pass\n"
expect "Retype new SMB password:"
send "$pass\n"
interact
spawn echo done
