#!/bin/sh
set -eo pipefail

if [ ! -d "MathHub" ]; then
  echo "this script needs to be executed in the archives repository"
  exit 1
fi

# this will remove your source code changes!
if [ "$1" != "-y" ]; then
    while true; do
        read -p "This will delete all your uncommitted changes in the archives (if you only want to removes build artefacts use ./clean.sh), do you want to continue? [y,n]: " yn
        case $yn in
            [Yy]* ) break;;
            [Nn]* ) exit 2;;
            * ) echo "Please answer yes or no.";;
        esac
    done
fi

git submodule foreach "
    git clean -fdx
    git reset --hard
"
