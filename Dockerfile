FROM node:16.20.0-alpine3.18

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY package*.json ./
COPY db.db ./

RUN apk update && apk upgrade
RUN apk add --no-cache sqlite

RUN npm install

USER node
EXPOSE 10000
CMD [ "node", "server.js" ]
