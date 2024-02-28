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

#docker run -d --rm -p 3000:8000 
#--env PORT=8000( this helps to change the port without rebuilding image again  )
#--name feedback-app -v feedback:/app/feedback -v "$(pwd):/app" -v /app/node_modules feedback-node:volumes

#docker run -d --rm -p 3000:8000 
#--env-file ./.env ( this helps to specify file for environment variables  )
#--name feedback-app -v feedback:/app/feedback -v "$(pwd):/app" -v /app/node_modules feedback-node:volumes
