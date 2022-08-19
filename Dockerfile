FROM node:16.13.0-alpine3.11
LABEL Maintainer="Tim Brispot Konsumer <mybriteam@bri.co.id>"
LABEL Description="Lightweight container NPM based on Alpine Linux."

ENV MYNAME="Rohman Nur Haqiqi"

RUN apk add --no-cache tree\
    git \
    composer 
WORKDIR /home/brispot
RUN mkdir -p /home/brispot
RUN cd /home/brispot && npm install -g serve
COPY . .
ENTRYPOINT ["/bin/sh", "--"]

