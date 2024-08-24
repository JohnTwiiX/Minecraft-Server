#!/bin/bash

BEDROCK_ZIP="bedrock-server-1.21.20.03.zip"
BEDROCK_DIR="Minecraft-Bedrock"
WORLD_ZIP="YOU_SHOULD_TRY_THIS_V208.zip"
WORLD_DIR="./Minecraft-Bedrock/worlds/TestMap"

# Überprüfe, ob die Bedrock-Server-ZIP-Datei existiert
if [ -f "$BEDROCK_ZIP" ]; then
    echo "Entpacke $BEDROCK_ZIP nach $BEDROCK_DIR..."
    unzip "$BEDROCK_ZIP" -d "$BEDROCK_DIR"
else
    echo "Datei $BEDROCK_ZIP nicht gefunden!"
    exit 1
fi

# Überprüfe, ob die Welt-ZIP-Datei existiert
if [ -f "$WORLD_ZIP" ]; then
    echo "Entpacke $WORLD_ZIP nach $WORLD_DIR..."
    mkdir -p "$WORLD_DIR"  # Stelle sicher, dass das Zielverzeichnis existiert
    unzip "$WORLD_ZIP" -d "$WORLD_DIR"
else
    echo "Datei $WORLD_ZIP nicht gefunden!"
    exit 1
fi

echo "Entpacken abgeschlossen."
