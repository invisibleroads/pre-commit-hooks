#!/bin/bash
for notebook_path in "$@"; do
    jupyter nbconvert --clear-output --inplace "$notebook_path"
done
