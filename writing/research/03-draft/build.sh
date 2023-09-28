#!/bin/sh

if [ -z "$1" ]; then
    echo "needs 1 argument: source file"
    exit 1
fi

set -x

# mkdir -p "$(pwd)/build"

filename=$(basename "$1")
podman run --rm \
       --volume "$(pwd):/data" \
       docker.io/pandoc/core "$filename" --standalone -o "${filename%.*}.tex"

podman run --rm \
       --volume "$(pwd):/miktex/work" \
       --volume miktex:/miktex/.miktex \
       docker.io/miktex/miktex pdflatex "${filename%.*}.tex"

