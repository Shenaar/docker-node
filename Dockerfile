FROM node:8

RUN DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y --no-install-recommends chromium \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

ENV CHROME_BIN=chromium

RUN npm install tslint typescript -g

CMD ["node"]
