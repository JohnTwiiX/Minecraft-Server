#!/bin/bash

DEFAULT_SERVER_NAME="MC-Server"
DEFAULT_GAMEMODE="adventure"
DEFAULT_ALLOW_CHEATS="true"
DEFAULT_MAX_PLAYERS="20"
DEFAULT_ONLINE_MODE="true"
DEFAULT_LEVEL_NAME="TestMap"
DEFAULT_TEXTUREPACK_REQUIRED="true"

PERMISSIONS_FILE="./Minecraft-Bedrock/permissions.json"
SERVER_PROPERTIES_FILE="./Minecraft-Bedrock/server.properties"

while getopts ":u:" opt; do
    case ${opt} in
        u )
            XUID=$OPTARG
            ;;
        \? )
            usage
            ;;
    esac
done
shift $((OPTIND -1))

if [ ! -z "$XUID" ]; then
    echo "Updating permissions.json with XUID: $XUID..."
    echo "["
    echo "    {"
    echo "        \"permission\": \"operator\","
    echo "        \"xuid\": \"$XUID\""
    echo "    }"
    echo "]"
    printf '[\n    {\n        "permission": "operator",\n        "xuid": "%s"\n    }\n]' "$XUID" > "$PERMISSIONS_FILE"
else
    echo "No XUID provided. Skipping permissions.json update."
fi

echo "Updating server.properties..."
sed -i "s/^server-name=.*/server-name=$DEFAULT_SERVER_NAME/" "$SERVER_PROPERTIES_FILE"
sed -i "s/^gamemode=.*/gamemode=$DEFAULT_GAMEMODE/" "$SERVER_PROPERTIES_FILE"
sed -i "s/^allow-cheats=.*/allow-cheats=$DEFAULT_ALLOW_CHEATS/" "$SERVER_PROPERTIES_FILE"
sed -i "s/^max-players=.*/max-players=$DEFAULT_MAX_PLAYERS/" "$SERVER_PROPERTIES_FILE"
sed -i "s/^online-mode=.*/online-mode=$DEFAULT_ONLINE_MODE/" "$SERVER_PROPERTIES_FILE"
sed -i "s/^level-name=.*/level-name=$DEFAULT_LEVEL_NAME/" "$SERVER_PROPERTIES_FILE"
sed -i "s/^texturepack-required=.*/texturepack-required=$DEFAULT_TEXTUREPACK_REQUIRED/" "$SERVER_PROPERTIES_FILE"

echo "Updates completed."
