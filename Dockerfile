FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 bash
RUN /usr/bin/mkdir /application
COPY httpServer /application/
COPY --chmod=755 startHttpServer.sh /application/
RUN /bin/bash -c /application/startHttpServer.sh
ENTRYPOINT ["/bin/bash"]