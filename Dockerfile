FROM alpine

# https://github.com/docker-library/python/blob/ce69fc6369feb8ec757b019035ddad7bac20562c/3.7/alpine3.9/Dockerfile

ENV PYTHONIOENCODING utf-8
RUN apk update && apk upgrade \
  && apk add --no-cache --update \
  python3 \
  python3-dev \
  py3-pip \
  build-base \
  linux-headers \
  # git \
  # openssl-dev \
  # libxml2-dev \
  # libxslt \
  # libxslt-dev \
  # py-libxslt \
  # py-libxml2 \
  # py-lxml \
  # ca-certificates \
  # wget \
  && pip3 install --upgrade pip \
  && pip3 install virtualenv \
  # && update-ca-certificates \
  && rm -rf /var/cache/apk/*


