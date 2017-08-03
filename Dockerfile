FROM jfloff/alpine-python:2.7-slim

RUN pip install flask
COPY hostinfo.py /hostinfo.py

EXPOSE 5000
ENTRYPOINT ["python", "/hostinfo.py"]
