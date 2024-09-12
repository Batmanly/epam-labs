#!/bin/bash
commitMessage=$(git log --format=%B -n 1 HEAD)
if [[ "$commitMessage" =~ $1-* ]]; then
    echo "Commit message is valid"
    exit 0
fi
echo "Commit message should start with {projectCode}-{work-item-number}"