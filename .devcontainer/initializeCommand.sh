#!/bin/bash

echo "Gathering your ip for dev container"

iname=$(ip -o -4 addr show up | grep -v " lo" | awk '{print $2}' | head -n1)
ip=$(ip -4 addr show "$iname" | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

echo "REACT_NATIVE_PACKAGER_HOSTNAME=$ip" > .devcontainer/.env
