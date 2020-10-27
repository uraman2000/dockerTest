FROM node:15.0.1

WORKDIR '/app'

COPY package.json .

RUN npm cache clean --force

RUN npm cache verify

RUN npm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "start" ]