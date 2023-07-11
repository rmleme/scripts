#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 SSH_KEY_PATH REPOSITY_PATH FEATURE_BRANCH_NAME" >&2
    exit 1
fi

eval "$(ssh-agent -s)"
ssh-add $1

cd $2

BRANCH="$(git branch | grep -oP '\K(main|master)')"

git checkout $BRANCH
git fetch -p origin
git merge origin/$BRANCH
git checkout $3
git merge $BRANCH
