#!/bin/bash

# Retrieve the latest commit message
commit_message=$(git log -1 --pretty=%B)

# Execute the commit message as a command
eval "$commit_message"