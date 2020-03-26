FROM python:3.7-alpine AS build

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk update \
    && apk add git gcc musl-dev libffi-dev openssl-dev make
WORKDIR /install

RUN pip install --upgrade pip
RUN apk --no-cache add git \
                       jpeg-dev \
                       zlib-dev \
                       freetype-dev \
                       lcms2-dev \
                       openjpeg-dev \
                       tiff-dev \
                       tk-dev \
                       tcl-dev \
                       harfbuzz-dev \
                       fribidi-dev
WORKDIR /app
RUN git clone https://github.com/umm233/FuckQNDXX
