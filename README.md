# Minecraft Dedicated Server Bedrock and Java Edition

A simple Minecraft Server in a Docker Container.

## Requirements

- unzip

## Introduction

### Java Edition

1. build a docker image

    ```bash
    # go in folder Java-Server
    cd Java-Server

    docker build -t <image-name>:<tag-name> . 
    # -t Name and optionally a tag in the <image-name>:<image-tag> format
    ```

1. create a volume

    ```bash
    docker volume create <volume-name>
    ```

1. start your docker container

    ```bash
    docker run --name <container-name> \
    -p 8888:25565 \
    -v <volume>:/app/ \
    --restart on-failure \
    <image-name>:<image-tag>
    ```

### Bedrock Edition

1. build a docker image

    ```bash
    # go in folder Java-Server
    cd Bedrock-Server

    docker build -t <image-name>:<tag-name> . 
    # -t Name and optionally a tag in the <image-name>:<image-tag> format
    ```

1. create a volume

    ```bash
    docker volume create <volume-name>
    ```

1. start your docker container

    ```bash
    docker run --name <container-name> \
    -p 8888:19132/udp \
    -v <volume>:/app/ \
    --restart on-failure \
    <image-name>:<image-tag>
    ```
