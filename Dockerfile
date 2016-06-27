FROM frolvlad/alpine-python3

ADD ja.tgz /root/
RUN pip install janome && \
    /root/mvpyc && \
    find /usr/lib/python3.5 -name __pycache__ | xargs rm -r && \
    rm -rf /root/.c* /root/mvpyc
ENTRYPOINT ["python3", "/root/ja.py"]
