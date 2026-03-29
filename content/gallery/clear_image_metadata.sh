#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
IMAGE_DIR="$SCRIPT_DIR/images"

if ! command -v exiftool &> /dev/null; then
    echo "exiftool is not installed. Install it with: brew install exiftool"
    exit 1
fi

if [ ! -d "$IMAGE_DIR" ]; then
    echo "No images directory found at $IMAGE_DIR"
    exit 1
fi

echo "Stripping metadata from all images in $IMAGE_DIR ..."
find "$IMAGE_DIR" -maxdepth 1 -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) -exec exiftool -all= -tagsfromfile @ -Orientation -overwrite_original {} +

echo "Done."
