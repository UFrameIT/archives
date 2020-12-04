#!/bin/sh
# when editing, reflect changes in `update.ps1`, too!
git pull && git pull --recurse-submodules && git submodule foreach git checkout devel && git submodule foreach git pull
