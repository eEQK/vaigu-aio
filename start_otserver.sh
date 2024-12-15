#!/bin/bash

start_otserver() {
    export CCACHE_DIR=".cache/ccache"

    cd otserver

    mkdir -p out
    mkdir -p .cache/ccache

    cmake --preset linux-debug -B out -S . \
        && cmake --build out \
        && out/bin/canary-debug
}

start_otserver