#!/bin/sh

# this will remove your source code changes!
if [ "$1" != "-y" ]; then
    while true; do
        read -p "This will delete all your uncommitted changes, do you want to continue? [y,n]: " yn
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
