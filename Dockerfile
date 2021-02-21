FROM python:3.9-alpine AS server

RUN python3.9 -m pip install Flask


FROM alpine:latest AS client

RUN apk --no-cache add curl
