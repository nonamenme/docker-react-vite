FROM node:20-alpine3.17

WORKDIR /app

COPY frontend/package.json frontend/yarn.lock ./

RUN yarn install

COPY frontend/ .

CMD yarn dev
