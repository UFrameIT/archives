#!/bin/sh

# this only removes build artefacts and should not delete any source code changes (no gurantee)
echo "Removing all (commited and uncommited) build artefacts:"
find '(' -type d '(' -name "bin" -o -name "content" -o -name "errors" -o -name "narration" -o -name "relational" -o -name "logaux" ')' -o -type f -name "build.html" ')' -print -exec rm -r {} +
