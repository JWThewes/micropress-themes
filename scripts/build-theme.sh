#!/bin/bash

# Build script to package a theme into a ZIP file
# Usage: ./scripts/build-theme.sh <theme-name> <version>

set -e

if [ $# -ne 2 ]; then
    echo "Usage: $0 <theme-name> <version>"
    echo "Example: $0 clean-minimal 1.0.0"
    exit 1
fi

THEME_NAME=$1
VERSION=$2
THEME_DIR="themes/$THEME_NAME"
OUTPUT_DIR="releases"
OUTPUT_FILE="$THEME_NAME-v$VERSION.zip"

# Check if theme exists
if [ ! -d "$THEME_DIR" ]; then
    echo "Error: Theme directory '$THEME_DIR' not found"
    exit 1
fi

# Check if manifest.json exists
if [ ! -f "$THEME_DIR/manifest.json" ]; then
    echo "Error: manifest.json not found in $THEME_DIR"
    exit 1
fi

# Check if theme.css exists
if [ ! -f "$THEME_DIR/theme.css" ]; then
    echo "Error: theme.css not found in $THEME_DIR"
    exit 1
fi

# Create releases directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Create ZIP file
echo "Building $THEME_NAME v$VERSION..."
cd "$THEME_DIR"
zip -r "../../$OUTPUT_DIR/$OUTPUT_FILE" . -x "*.DS_Store" -x "__MACOSX/*"
cd ../..

echo "✅ Theme packaged successfully: $OUTPUT_DIR/$OUTPUT_FILE"
echo ""
echo "Next steps:"
echo "1. Test the theme by uploading to MicroPress"
echo "2. Create a GitHub release with tag: $THEME_NAME-v$VERSION"
echo "3. Upload the ZIP file to the release"
echo "4. Update registry.json with the release URL"
