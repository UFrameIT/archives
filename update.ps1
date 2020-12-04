# when editing, reflect changes in `update.sh1`, too!
git pull ; git pull --recurse-submodules ; git submodule foreach git checkout devel ; git submodule foreach git pull
