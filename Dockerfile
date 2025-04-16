# Use Node.js LTS as base image
FROM node

ENV MONGO_DB_USERNAME=admin \
MONGO_DB_PWD=qwert

RUN mkdir -p testeapp

COPY . /testeapp

COPY package*.json ./

CMD ["node", "server.js"]

EXPOSE 3000
