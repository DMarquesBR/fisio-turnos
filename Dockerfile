FROM node:16.20.0-alpine3.18
MAINTAINER DMarquesBR

RUN apt-get update -qq
	&& apt-get upgrade -y -qq
	&& apt-get -y install sqlite3 libsqlite3-dev

USER node

EXPOSE 8000

VOLUME ["/data"]

WORKDIR /data

CMD ["bash"]

