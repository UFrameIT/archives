#!/bin/sh
git submodule foreach "
    git clean -fdx
    git reset --hard
"

echo
echo "Removing all commited build artefacts:"
find '(' -type d '(' -name "bin" -o -name "content" -o -name "errors" -o -name "narration" -o -name "relational" -o -name "logaux" ')' -o -type f -name "build.html" ')' -print -exec rm -r {} +
