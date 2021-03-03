	
FROM	node:alpine
LABEL	org.opencontainers.image.authors="Toni Tauro <eye@eyenx.ch>"
ADD	docker-entrypoint.sh	/
RUN	apk add python3 make g++ \
    && npm install -g ssb-server \
	&& chmod +x /docker-entrypoint.sh
VOLUME	/root/.ssb
EXPOSE	8008
ENTRYPOINT	["/docker-entrypoint.sh"]
