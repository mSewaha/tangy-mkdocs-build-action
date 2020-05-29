#!/bin/sh

set -x # verbose mode
set -e # stop executing after error

echo "*** Starting mkdocs build ***"

echo "Setting workspace permissions"
chmod -R a+w ${GITHUB_WORKSPACE}


#pip install -r requirements.txt
#pip install mkdocs-minify-plugin>=0.2

#mkdocs build

#print_info "setup with GITHUB_TOKEN"
#remote_repo="https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
echo "mkdocs build and gh-deploy"
mkdocs gh-deploy --config-file "${GITHUB_WORKSPACE}/mkdocs.yml" --force


echo "Completed mkdocs build"