#!/bin/bash
read username
read token
reponame='test1'
curl \
 -X POST \
 -H "Authorization: token $token" https://api.github.com \
 -H "Accept: application/vnd.github.v3+json" \
https://api.github.com/user/repos \
 -d "{\"name\":\"$reponame\", \"auto_init\": true}"