#!/usr/bin/env bash
set -euo pipefail
shopt -s inherit_errexit
set -x

__dirname="$(CDPATH= cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$__dirname"

./package.json.generate.js
mkdir -p lib
cp ../../source-map.d.ts ./
cp ../../lib/source-map-consumer.js ./lib/
cp ../../lib/util.js ./lib/
cp ../../lib/binary-search.js ./lib/
cp ../../lib/array-set.js ./lib/
cp ../../lib/read-wasm.js ./lib/
cp ../../lib/wasm.js ./lib/
cp ../../lib/mappings.wasm ./lib/
