FROM node:alpine

LABEL   maintainer="Toni Tauro <eye@eyenx.ch>"

ADD docker-entrypoint.sh /

RUN npm install -g ssb-server  && chmod +x /docker-entrypoint.sh

VOLUME /root/.ssb

EXPOSE 8008

ENTRYPOINT ["/docker-entrypoint.sh"]
