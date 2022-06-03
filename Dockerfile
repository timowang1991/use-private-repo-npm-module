FROM node:16-alpine3.12

ARG GITHUB_PERSONAL_ACCESS_TOKEN

WORKDIR /app

RUN apk add git && git config --global url."https://${GITHUB_PERSONAL_ACCESS_TOKEN}:x-oauth-basic@github.com/".insteadOf "https://github.com/"

COPY package*.json ./

RUN npm install

COPY index.js .

CMD [ "node", "index" ]
