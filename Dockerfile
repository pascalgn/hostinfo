FROM node:alpine

RUN apk add --no-cache tini \
    && npm install -g express \
    && adduser -D -g hostinfo hostinfo

ENV NODE_PATH=/usr/local/lib/node_modules

COPY hostinfo.js /hostinfo.js

USER hostinfo
WORKDIR /home/hostinfo

ENTRYPOINT ["tini", "--", "/hostinfo.js"]
