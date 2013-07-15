#!/bin/sh
# set SSH_ASKPASS if not set elsewhere
export SSH_ASKPASS=/usr/bin/ssh-askpass
ssh-add </dev/null
