FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node","server.js" ]

#named container they stay persistent all the time even if container is removed
#docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback feedback-node:volumes