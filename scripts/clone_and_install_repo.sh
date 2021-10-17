#! /bin/bash
# This script is run automatically as a ``mup deploy``-hook
echo "$REMOTE_REPO -> $REPO"
git clone --depth 1 --single-branch --branch="$BRANCH" $REMOTE_REPO || git -C "$REPO" pull
npm install --prefix "$REPO/showdown-rechords"
npm install --prefix "$REPO/app"
