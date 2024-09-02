FROM python:3.12

WORKDIR /app

COPY . $WORKDIR

RUN apt-get update && \
    apt-get install -y unzip 

ARG XUID=2535412521483302

RUN chmod +x ./unzip_packages.sh && \
    ./unzip_packages.sh && \
    chmod +x ./update_server_config.sh && \
    ./update_server_config.sh -u $XUID

WORKDIR /app/Minecraft-Bedrock

EXPOSE 19132/udp

ENTRYPOINT ["sh", "-c", "LD_LIBRARY_PATH=. ./bedrock_server"]