FROM ubuntu:latest
MAINTAINER pooja <pooja1995@gmail.com>
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install -g http-server

ADD gentelella-master /usr/apps/hello-docker/gentelella-master/

WORKDIR /usr/apps/hello-docker/

CMD ["http-server", "-s"]


