FROM node:18 AS builder

ENV WORKDIR=/opt/docker-tutorial

RUN apt-get update; \
	apt-get install neovim -y;

COPY package*.json ./
RUN npm install

COPY . /opt/docker-tutorial
COPY ./scripts/docker-entrypoint.sh /usr/local/bin

WORKDIR $WORKDIR

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["index.js"]
