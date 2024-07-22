#!/bin/sh
set -euo pipefail

if [ ! -d "MathHub" ]; then
  echo "this script needs to be executed in the archives repository"
  exit 1
fi

# this only removes build artefacts and should not delete any source code changes (no gurantee)
echo "Removing all (commited and uncommited) build artefacts:"
find '(' -type d '(' -name "bin" -o -name "content" -o -name "errors" -o -name "narration" -o -name "relational" -o -name "logaux" ')' -o -type f -name "build.html" ')' -print -exec rm -r {} +
