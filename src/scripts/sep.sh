#!/bin/bash

yq '.repositories.provider.github-actions[]' "${PARAM_DIR}"/"${PARAM_SEP}" > github-actions-repositories.yaml
yq '.repositories.provider.circleci[]' "${PARAM_DIR}"/"${PARAM_SEP}" > circleci-repositories.yaml
echo -------------------------------- Repositories are run on CircleCI --------------------------------
cat circleci-repositories.yaml
echo -------------------------------- Repositories are run on Actions --------------------------------
cat github-actions-repositories.yaml
echo -------------------------------------------------------------------------------------------------
