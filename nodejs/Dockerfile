FROM node:14-buster AS builder

ENV WORKDIR=/opt/docker-tutorial

RUN apt-get update; \
	apt-get install neovim -y;
RUN npm install -y nodemon 
RUN npm install -y axios

COPY . /opt/docker-tutorial
COPY ./scripts/docker-entrypoint.sh /usr/local/bin
#COPY --from=builder \
#	$WORKDIR/scripts/docker-entrypoint.sh \
#	/usr/local/bin/

WORKDIR $WORKDIR

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["index.js"]
