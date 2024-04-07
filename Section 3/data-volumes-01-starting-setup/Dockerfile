FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# VOLUME [ "/app/feedback" ]

# doesn't work, it is anonymous volume
# it creates a volume which exist until we don't remove container 
# from the machine until then only it exist

CMD [ "node","server.js" ]

