#!/usr/bin/expect
send "pm2 start test\r"
expect {
    "Applying action" { send "exit\r"}
    "script not found" { exit 1}
    timeout { exit 1 }
}
expect "siteserver"
send "exit\r"
expect "#"
exit 0

