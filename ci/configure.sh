#!/usr/bin/env bash

set -eu

pipeline="sample-pipeline"

if [[ $(lpass status -q; echo $?) != 0 ]]; then
  echo "Login with lpass first"
  exit 1
fi

fly -t concourse set-pipeline -p "${pipeline}" \
    -c ci/pipeline.yml \
    --load-vars-from <(lpass show -G "sample-app-concourse-secrets" --notes) \
    --var=branch_name=develop
