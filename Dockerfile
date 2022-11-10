FROM node:alpine

WORKDIR usr/src/docker-react-test

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start" ]

