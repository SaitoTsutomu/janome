FROM alpine

RUN apk add -U musl python3 wget && \
    wget -q --no-check-certificate https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py && \
    pip install janome && \
    rm -rf get-pip.py /root/.[acw]* /var/cache/apk/* /tmp/*
COPY ja /usr/local/bin/
COPY ja.py /root/
WORKDIR /root
ENTRYPOINT ["ja"]
