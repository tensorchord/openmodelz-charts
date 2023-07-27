#!/usr/bin/env bash

set -e

GITHUB_TOKEN=$1

cr package ./charts/openmodelz
cr upload --owner tensorchord --git-repo openmodelz-charts --skip-existing -t $GITHUB_TOKEN
cr index --owner tensorchord --git-repo openmodelz-charts -i index.yaml
