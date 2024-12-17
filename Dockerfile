
FROM node:18

WORKDIR N:\testApp\app.js

COPY package*.json ./

COPY app.js ./

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
