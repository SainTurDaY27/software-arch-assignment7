FROM node:12.18.1-alpine

#ENV PORT 3000

WORKDIR /usr/src/app

COPY package*.json ./


COPY . .
#COPY ./videos ./

RUN npm install

EXPOSE ${PORT}
CMD ["npm", "start"]