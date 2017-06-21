#!/bin/sh

set -e

tools/make-webext.sh

pushd dist/build/adnauseam.webext

web-ext run -v --no-reload --firefox-profile="${1:-default}"

popd
