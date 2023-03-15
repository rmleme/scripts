#!/bin/bash

if [[ "$#" -ne 4 && "$#" -ne 5 ]]; then
    echo "Usage: $0 SSH_KEY_PATH CLONE_BASE_DIR GITHUB_TOKEN GITHUB_USER PAGE" >&2
    exit 1
fi

eval "$(ssh-agent -s)"
ssh-add $1

cd $2

curl -H "Authorization: token $3" -s "https://api.github.com/users/$4/repos?page=${5:1}&per_page=100" | grep -w ssh_url | grep -o '[^"]\+@.\+.git' | xargs -L1 git clone
