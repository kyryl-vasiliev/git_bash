#!/bin/bash

if [ $# -eq 1 ]
  then
echo "You could fill username and token manually without pipe < "
echo "Username as in path"
read username
echo "token"
read token
reponame=$1
echo "trying to create $reponame"
curl \
 -X POST \
 -H "Authorization: token $token"  \
 -H "Accept: application/vnd.github.v3+json" \
https://api.github.com/user/repos \
 -d "{\"name\":\"$reponame\", \"auto_init\": true}"
  else
echo "usage ./create_repo.sh RepoName < UsernameAndTokenFile.txt"
echo "	or"
echo "	./create_repo.sh RepoName"
echo "  sample of UsernameAndTokenFile.txt contest:"
echo "	my_git_username"
echo "	234645644578797897"
fi