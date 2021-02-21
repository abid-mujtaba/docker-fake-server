FROM python:3.9-alpine AS server

RUN python3.9 -m pip install Flask

WORKDIR /workarea

ENV FLASK_APP=/workarea/server.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=80


FROM alpine:latest AS client

RUN apk --no-cache add curl
