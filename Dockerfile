FROM ubuntu:latest AS server

RUN apt-get update \
 && apt-get install -y \
        python3.9 \
        python3-pip \
 && apt-get clean

RUN python3.9 -m pip install \
        cryptography \
        Flask


FROM alpine:latest AS client

RUN apk --no-cache add curl
COPY curl_insecure.sh /usr/local/bin/curl
