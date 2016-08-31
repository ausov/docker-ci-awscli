FROM alpine:latest

RUN apk -Uuv add \
      bash \
      curl \
      zip \
      groff \
      less \
      python \
      py-pip && \
  pip install awscli && \
  apk --purge -v del py-pip && \
  rm /var/cache/apk/* /tmp/*
