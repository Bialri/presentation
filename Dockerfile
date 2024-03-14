FROM node:latest

RUN npm install -g http-server

WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
CMD [ "http-server"]