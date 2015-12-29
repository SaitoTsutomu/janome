FROM alpine

RUN apk add -U musl python3 && \
    pip3 install -U pip && \
    pip install janome && \
    rm -rf /var/cache/apk/* /tmp/*
CMD ["sh"]
