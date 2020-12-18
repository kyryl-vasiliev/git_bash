#!/bin/bash

read name
read token

curl -i -H "Authorization: token $token" \
    https://api.github.com/user/repos | grep full_name