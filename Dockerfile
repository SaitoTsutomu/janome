FROM frolvlad/alpine-python3

RUN pip install janome && \
    find /usr/lib/python3.5 -name __pycache__ | xargs rm -r && \
    rm -rf /root/.c*
ADD ja.tgz /root/
ENTRYPOINT ["python3", "/root/ja.py"]


