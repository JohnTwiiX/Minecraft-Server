# Minecraft Dedicated Server Bedrock and Java Edition

A simple Minecraft Server in a Docker Container.

## Requirements

- Docker Compose

## Introduction

I created two profiles with Docker Compose. These build a dedicated Bedrock and Java server.

### Build

a. build and run a bedrock server

```bash
docker compose --profile bedrock up -d
```

b. build and run a java server

```bash
docker compose --profile java up -d
```

c. stop container

```bash
docker compose stop <container-name>
```

d. delete container

```bash
docker compose down <container-name>
```

e. list all container

```bash
docker compose ps
```
