#!/bin/bash

compare=$(grep -F -f circleci-repositories.yaml github-actions-repositories.yaml)
export compare
echo 1. "$compare"
echo 2. $compare
echo 3. ${compare}
echo 4. "${compare}"
#if [ -z "$compare" ]; then
#  echo "$compare"
#  echo "Repositories are not duplicates"
#  exit 0
#else
#  echo "$compare"
#  echo "Repositories are duplicates"
#  exit 1
#fi