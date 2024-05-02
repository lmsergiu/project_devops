FROM nginx:latest
RUN apt-get update && apt-get install -y python3 bash
RUN /usr/bin/mkdir /application
COPY httpServer /application/
COPY --chmod=755 startHttpServer.sh /application/
ENTRYPOINT ["nginx", "-g", "daemon off;"]
RUN startHttpServer.sh