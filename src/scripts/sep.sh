#!/bin/bash

yq '.repositories.provider.github-actions[]' "${PARAM_DIR}"/"${PARAM_SEP}" > "${PARAM_FI1}"
yq '.repositories.provider.circleci[]' "${PARAM_DIR}"/"${PARAM_SEP}" > "${PARAM_FI2}"
echo -------------------------------- Repositories are run on "${PARAM_FI2}" --------------------------------
cat "${PARAM_FI2}"
echo -------------------------------- Repositories are run on "${PARAM_FI1}" --------------------------------
cat "${PARAM_FI1}"
echo -------------------------------------------------------------------------------------------------
