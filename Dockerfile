FROM alpine

RUN apk add -U musl python3 wget && \
    wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py && \
    pip install janome && \
    rm -rf get-pip.py /var/cache/apk/* /tmp/*
CMD ["sh"]
