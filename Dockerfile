FROM node:15.5.0

WORKDIR /code

ENV PORT 8089

COPY package.json /code/package.json

RUN npm install

COPY . /code

CMD ["node", "src/server.js"]