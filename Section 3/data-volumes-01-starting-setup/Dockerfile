FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

#anonymous volume
#path inside the container that needs to be saved
#docker automatically creates and manages this volume
#docker volume ls shows the volume created with cryptic name but
#this volume gets deleted as soon as se delete the running container and hence prob still not solved
VOLUME [ "/app/feedback" ] 


CMD [ "node","server.js" ]