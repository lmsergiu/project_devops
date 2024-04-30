FROM    ubuntu:jammy

RUN     apt-get update
RUN     apt-get install -y python3
RUN	    /usr/bin/mkdir /application

COPY    httpServer	/application/

RUN     cd /application/
RUN     /usr/bin/python3 -m httpServer &