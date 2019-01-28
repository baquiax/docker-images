FROM node:10-alpine
MAINTAINER Baquiax <alexanderbaquiax@gmail.com>

ENV SERVERLESS_VERSION 1.36.3

RUN \
  npm install -g try-thread-sleep &&\
  npm install -g serverless@"${SERVERLESS_VERSION}" --ignore-scripts spawn-sync

