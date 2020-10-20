#!/bin/bash

rm -rf ./vendor
mkdir ./vendor
cd vendor
git clone git://github.com/hzeller/rpi-rgb-led-matrix.git
git checkout 0a4f8f9a9
cd rpi-rgb-led-matrix
make
