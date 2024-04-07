FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

#write them here because if arg changes from cmd line RUN will execute again
ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT 

EXPOSE $PORT

CMD [ "node","server.js" ]
