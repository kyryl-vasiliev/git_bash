#!/bin/bash
read username
read token
reponame='test'
curl \
 -X POST \
 -H "Authorization: token $token"  \
 -H "Accept: application/vnd.github.v3+json" \
https://api.github.com/user/repos \
 -d "{\"name\":\"$reponame\", \"auto_init\": true}"