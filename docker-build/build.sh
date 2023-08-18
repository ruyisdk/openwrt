#!/usr/bin/bash

cd /workspace

./scripts/feeds update -a
./scripts/feeds install -a

cp config-licheepi4a .config

make defconfig
make download V=s -j$(nproc) && make V=s -j$(nproc)
