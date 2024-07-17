#!/bin/sh
set -euxo pipefail

../MMT/deploy/run-file build.msl
#java -Xmx8192m -cp "../MMT/deploy/mmt.jar" info.kwarc.mmt.api.frontend.Run :file build.msl
