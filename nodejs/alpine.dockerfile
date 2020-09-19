FROM ccr.ccs.tencentyun.com/sampsonliu/alpine:0.0.1

RUN set -x \
    && apk -U --no-cache add --update nodejs npm \
    && rm -rf /var/cache/apk/*
    && npm -v \
    && node -v


