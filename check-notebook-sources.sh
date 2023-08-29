#!/bin/bash
for notebook_path in "$@"; do
    nbqa pylama "$notebook_path"
done
