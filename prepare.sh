#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

chmod 755 "${DIR}"
rm -rf "${DIR}/vendor"
mkdir "${DIR}/vendor"
cd "${DIR}/vendor" || exit
git clone git://github.com/remerle/rpi-rgb-led-matrix.git
cd "${DIR}/vendor/rpi-rgb-led-matrix" || exit
git -c advice.detachedHead=false checkout b8c7cc4
make
