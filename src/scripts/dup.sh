#!/bin/bash

compare=$(grep -F -f circleci-repositories.yaml github-actions-repositories.yaml)
export compare
if [[ -z $compare ]]; then
  echo "$compare"
  echo "Repositories are not duplicates"
  grep -F -f circleci-repositories.yaml github-actions-repositories.yaml
  exit 0
else
  echo "$compare"
  echo "Repositories are duplicates"
  grep -F -f circleci-repositories.yaml github-actions-repositories.yaml
  exit 1
fi