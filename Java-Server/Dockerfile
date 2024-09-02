FROM python:3.12

WORKDIR /app

COPY . $WORKDIR

RUN apt-get update && \
    apt-get install -y default-jre-headless openjdk-21-jdk  

# RUN java -Xmx1024M -Xms1024M -jar server.1.21.1.jar nogui
RUN echo "eula=true" > eula.txt

EXPOSE 25565

ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.1.21.1.jar", "nogui"]