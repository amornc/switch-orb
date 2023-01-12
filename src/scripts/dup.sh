#!/bin/bash

compare=$(grep -F -f circleci-repositories.yaml github-actions-repositories.yaml)
export $compare
if [[ -z $compare ]]; then
  echo "Repositories are not duplicates"
  exit 0
else
  echo "Repositories are duplicates"
  exit 1
fi