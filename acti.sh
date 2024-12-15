#!/bin/bash

if [ -d ./.env/bin ]; then
    source ./.env/bin/activate
elif [ -d ../.env/bin ]; then
    source ../.env/bin/activate
else
    echo "ENV not found!"
fi
