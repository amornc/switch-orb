#!/bin/bash

#ls -lah
#grep -F -f circleci-repositories.yaml github-actions-repositories.yaml
cat circleci-repositories.yaml
cat github-actions-repositories.yaml
#compare=$(grep -F -f circleci-repositories.yaml github-actions-repositories.yaml)
#export compare
#echo "$compare"
#if [[ -z $compare ]]; then
#  echo "$compare"
#  echo "Repositories are not duplicates"
#  exit 0
#else
#  echo "$compare"
#  echo "Repositories are duplicates"
#  exit 1
#fi