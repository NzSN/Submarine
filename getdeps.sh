#!/bin/bash

PRIV="sudo"

if [ "$USER" == "root" ]; then
    PRIV=""
fi

(cd ./third_party/folly; 
$PRIV ./build/fbcode_builder/getdeps.py install-system-deps --recursive;
$PRIV apt install -y libfmt-dev;
$PRIV apt install -y libboost-all-dev)
