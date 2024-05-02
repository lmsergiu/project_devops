FROM nginx:latest
RUN apt-get update && apt-get install -y python3
RUN /usr/bin/mkdir /application
COPY httpServer /application/
ENTRYPOINT ["nginx", "-g", "daemon off;"]
RUN startHttpServer.sh