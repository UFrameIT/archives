#!/bin/sh
git pull && git pull --recurse-submodules && git submodule foreach git checkout devel && git submodule foreach git pull
