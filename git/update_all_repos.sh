#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 SSH_KEY_PATH SRC_BASE_DIR" >&2
    exit 1
fi

eval "$(ssh-agent -s)"
ssh-add $1

find $2 -maxdepth 1 -type d \( ! -name . \) -exec bash -c 'cd "{}" && pwd && export BRANCH="$(git branch | grep -oP "\K(main|master)")" && git pull origin $BRANCH' \;
