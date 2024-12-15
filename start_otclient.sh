#!/bin/bash

start_otclient() {
    export CCACHE_DIR=".cache/ccache"

    cd otclient

    mkdir -p out
    mkdir -p .cache/ccache

    cmake --preset linux-debug -B out -S . \
        && cmake --build out
}

start_otclient

echo '

Now on host, go to the multi/otclient dir and run `otclient` executable

Make sure to copy assets into multi/otclient/data/things/1340 beforehand

'