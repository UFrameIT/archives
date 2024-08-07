#!/bin/sh
set -euo pipefail
# when editing, reflect changes in `update.cmd`, too!

if [ ! -d "MathHub" ]; then
  echo "this script needs to be executed in the archives repository"
  exit 1
fi

# warn before deleting uncommitted changes
while true; do
    read -p "This will delete all your uncommitted changes and update to the latest remote commit, do you want to continue? [y,n]: " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 2;;
        * ) echo "Please answer yes or no.";;
    esac
done

# echo commands
set -x

./clean-git.sh -y
git pull
# init submodules in case they haven't been cloned yet
# and update them to the latest remote commit
git submodule update --init --remote
./clean-git.sh -y

#git submodule foreach git checkout devel
#git submodule foreach git pull

# echo off
set +x

# wait for user input to let the user see if there were any errors
read -p "Press enter to continue" ENTER

