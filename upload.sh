#!/bin/bash

if [[  -n $TRAVIS_BRANCH ]] && [[ $TRAVIS_BRANCH == "v4-dev" ]]
    then

eval "$(ssh-agent -s)"
chmod 600 deploy_key
ssh-add deploy_key
git commit -m 'Compiled!' dist
git checkout -b tmp
git push git@github.com:roidelapluie/bootstrap.git tmp:compiled
else
    echo not pushing
fi
