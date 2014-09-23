#!/usr/bin/expect

# This script requires expect to be installed:
# sudo apt-get install expect
# Edit fields marked with <> and run the script to automate login.
# Feel free to modify the patterns based on your server's prompts

set timeout 60
spawn ssh <USER>@<HOST>
# this will send the password once it received any text that
# ends with "password: "
expect "*?password: " { send "<PASSWORD>\r" }
# in case this is expected again
expect "*?password: " { send "<PASSWORD>\r" }
# login successful
expect "*?~> " { interact }
