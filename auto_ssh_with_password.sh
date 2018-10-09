#!/usr/bin/expect

################################################################################
# [Preliminary]                                                                #
# `expect` should be installed on your system.                                 #
# (Install with `sudo apt install expect`.)                                    #
#                                                                              #
# [Execution]                                                                  #
# 1. Make it executable by using `chmod u+x auto_ssh_with_password`            #
#    & Execute with `./auto_ssh_with_password.sh`                              #
# 2. You can also execute with `expect auto_ssh_with_password.sh`.             #
#                                                                              #
################################################################################

set ip ""
set username ""
set password ""

set timeout 30
spawn ssh -l ${username} ${ip}
expect "?assword:"
send "${password}\r"
interact
