#!/bin/bash

file="circleci-repositories.yaml"
while IFS= read -r line; do
      if [[ $line == "${CIRCLE_PROJECT_REPONAME}" ]] ; then
        echo "circleci repository match"
        exit 0
      else
         echo "circleci repository does not match"
      fi
done <$file
exit 1