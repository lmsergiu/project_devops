FROM nginx:latest
RUN apt-get update && apt-get install -y python3
RUN /usr/bin/mkdir /application && cd /application/
COPY httpServer /application/
RUN /usr/bin/python3 -m httpServer &
ENTRYPOINT ["/bin/bash"]