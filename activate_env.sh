#!/bin/bash

if [ -d ./.venv/bin ]; then
    source ./.venv/bin/activate
elif [ -d ../.venv/bin ]; then
    source ../.venv/bin/activate
else
    echo "VENV not found!"
fi
