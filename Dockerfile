FROM python:3.6-alpine

# https://github.com/docker-library/python/blob/ce69fc6369feb8ec757b019035ddad7bac20562c/3.7/alpine3.9/Dockerfile

# To get Scipy to work
# https://github.com/abn/scipy-docker-alpine

# numpy, scipy, pandas and matplotlib in Alpine (Docker) 
# https://gist.github.com/orenitamar/f29fb15db3b0d13178c1c4dd611adce2

# https://github.com/abn/scipy-docker-alpine
ENV PYTHONIOENCODING utf-8
RUN apk update && apk upgrade \
  && apk --update add --virtual \
  scipy-runtime \
  python3-dev \
  py3-pip \
  build-base \
  openblas-dev freetype-dev pkgconfig gfortran \
  # && ln -s /usr/include/locale.h /usr/include/xlocale.h \
  freetype libgfortran libgcc libpng libstdc++ musl openblas tcl tk \
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
  # && apk del scipy-build \
  && apk add --virtual scipy-runtime \
  && pip3 install --upgrade pip \
  && pip3 install virtualenv \
  # && update-ca-certificates \
  && rm -rf /var/cache/apk/*


