FROM node:alpine

WORKDIR /home/node/app

COPY package*.json ./
RUN yarn

COPY . .

EXPOSE 3000
