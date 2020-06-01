#!/bin/sh

set -x # verbose mode
set -e # stop executing after error

echo "*** Starting mkdocs build ***"

echo "Setting workspace permissions"
chmod -R a+w ${GITHUB_WORKSPACE}

echo "mkdocs build and gh-deploy"
mkdocs gh-deploy --config-file "${GITHUB_WORKSPACE}/mkdocs.yml" --force


echo "Completed mkdocs build"