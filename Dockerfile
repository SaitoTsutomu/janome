FROM frolvlad/alpine-python3

RUN pip install janome && \
    cd /usr/lib/python3.5/site-packages/sysdic/ && \
    for f in connections1 connections2 entries1 entries2 entries3 \
      entries4 entries5 entries6 entries7 entries8 entries9 entries10
    do
      mv __pycache__/$f.cpython-35.pyc $f.pyc
    done && \
    find /usr/lib/python3.5 -name __pycache__ | xargs rm -r && \
    rm -rf /root/.c*
ADD ja.tgz /root/
ENTRYPOINT ["python3", "/root/ja.py"]


