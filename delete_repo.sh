#!/bin/bash

read name
read token
reponame='test'

curl \
  -X POST \
  -H "Authorization: token $token" \
  -X DELETE \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/$name/$reponame