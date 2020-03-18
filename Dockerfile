FROM node:10-alpine

WORKDIR /home/node/app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000
CMD [ "/bin/sh", "-c" ,"npm install && npm run-script build && npm start"]
