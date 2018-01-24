FROM alpine:3.7

RUN apk --update --no-cache add \
    git \
    maven \
    openjdk8