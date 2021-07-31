#!/bin/sh

# I believe this was to execute somthing related to Python, venv?
PATH="${PATH}:$HOME/.local/bin"

# To install cordova globally only for the user and avoid using /usr/lib
PATH="${PATH}:$HOME/.node_modules/bin/bin"
export npm_config_prefix=~/.node_modules/bin

# AWS
alias aws_sigmind_test='ssh -i "~/.ssh/ar-lab-test-apirest.pem" ubuntu@ec2-54-166-192-65.compute-1.amazonaws.com'
