#!/bin/bash

eval "$(ssh-agent -s)"
chmod 600 deploy_key
ssh-add deploy_key
git commit -m 'Compiled!' dist
git push git@github.com:roidelapluie/bootstrap.git HEAD:compiled
