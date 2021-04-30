FROM node:alpine

RUN mkdir -p /usr/app && chown -R node:node /usr/app

WORKDIR /usr/app

COPY package.json yarn.lock ./

USER node

RUN yarn install --pure-lockfile

COPY --chown=node:node . .

EXPOSE 8080
