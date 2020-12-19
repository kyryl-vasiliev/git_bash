#!/bin/bash

if [ $# -eq 1 ]
  then
echo "You could fill username and token manually without pipe < "
echo "Username as in path"
read username
echo "token"
read token
reponame=$1

echo "trying to delete $reponame if no output probably successful"
curl \
  -X POST \
  -H "Authorization: token $token" \
  -X DELETE \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/$username/$reponame
  else
echo "usage ./delete_repo.sh RepoNameToDelete < UsernameAndTokenFile.txt"
echo "	or"
echo " ./delete_repo.sh RepoNameToDelete"
echo "  sample of UsernameAndTokenFile.txt contest:"
echo "	my_git_username"
echo "	234645644578797897"
fi

