#!/bin/bash

# Assign the variable to check
compare=$(grep -F -f circleci-repositories.yaml github-actions-repositories.yaml)
export compare

# Check if the variable is empty
if [[ -z "$compare" || -z "${compare// }" ]] && [ ${#compare} -gt 0 ]; then
  echo "Repositories are not duplicates."
else
  echo "Repositories duplicates name: $compare"
  echo "Repositories are duplicates"
  exit 1
fi