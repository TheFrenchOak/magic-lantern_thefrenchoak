#!/bin/sh
# Build Magic Lantern for the 5D Mark III with Docker (no toolchain needed on the host).
#
#   build_tools/docker/build.sh          # firmware 1.2.3
#   build_tools/docker/build.sh 113      # firmware 1.1.3
#
# Output: build/magiclantern-*.zip (contents go to the root of the card) and the build log.
set -e

FW=${1:-123}
ROOT=$(cd "$(dirname "$0")/../.." && pwd)
WORK=$(mktemp -d)
trap 'rm -rf "$WORK"' EXIT

docker build -q -t ml-5d3-build "$ROOT/build_tools/docker" > /dev/null

# build in a copy: this repo tracks some build outputs (including old module binaries),
# building in place would modify them; everything is cleaned and rebuilt from source
rsync -a --exclude .git --exclude build "$ROOT/" "$WORK/src/"

if ! docker run --rm -v "$WORK/src:/ml" ml-5d3-build \
        sh -c "(cd modules && make clean) > /dev/null 2>&1; cd platform/5D3.$FW && make clean > /dev/null 2>&1; make zip -j8" > "$WORK/build.log" 2>&1
then
    tail -40 "$WORK/build.log"
    echo "Build failed (full log above)."
    exit 1
fi

mkdir -p "$ROOT/build"
cp "$WORK/src/platform/5D3.$FW/"magiclantern-*.zip "$ROOT/build/"
cp "$WORK/build.log" "$ROOT/build/build-5D3.$FW.log"
ls -1 "$ROOT/build/"magiclantern-*"5D3$FW"*.zip
