#!/bin/bash

BEDROCK_ZIP="bedrock-server-1.21.20.03.zip"
BEDROCK_DIR="Minecraft-Bedrock"
WORLD_ZIP="YOU_SHOULD_TRY_THIS_V208.zip"
WORLD_DIR="./Minecraft-Bedrock/worlds/TestMap"

if [ -f "$BEDROCK_ZIP" ]; then
    echo "Unpack $BEDROCK_ZIP to $BEDROCK_DIR..."
    unzip "$BEDROCK_ZIP" -d "$BEDROCK_DIR"
else
    echo "Datei $BEDROCK_ZIP nicht gefunden!"
    exit 1
fi

if [ -f "$WORLD_ZIP" ]; then
    echo "Unpack $WORLD_ZIP to $WORLD_DIR..."
    mkdir -p "$WORLD_DIR"
    unzip "$WORLD_ZIP" -d "$WORLD_DIR"
else
    echo "File $WORLD_ZIP not found!"
    exit 1
fi

echo "Unpacking completed."
