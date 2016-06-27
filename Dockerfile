FROM frolvlad/alpine-python3

RUN pip install janome && \
    mv /usr/lib/python3.5/site-packages/sysdic/__pycache__ /tmp/ && \
    find /usr/lib/python3.5 -name __pycache__ | xargs rm -r && \
    mv /tmp/__pycache__ /usr/lib/python3.5/site-packages/sysdic/ && \
    rm -rf /root/.c*
ADD ja.tgz /root/
ENTRYPOINT ["python3", "/root/ja.py"]


