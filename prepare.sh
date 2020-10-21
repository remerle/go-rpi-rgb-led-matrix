#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

chmod 755 "${DIR}"
rm -rf "${DIR}/vendor"
mkdir "${DIR}/vendor"
cd "${DIR}/vendor" || exit
git clone git://github.com/hzeller/rpi-rgb-led-matrix.git
git checkout 0a4f8f9a9
cd "${DIR}/vendor/rpi-rgb-led-matrix" || exit
make
