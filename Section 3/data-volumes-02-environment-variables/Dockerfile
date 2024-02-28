FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ENV PORT 80 
#specify environment variables here

EXPOSE $PORT

CMD [ "node","server.js" ]

#docker run -d --rm -p 3000:8000 
#--env PORT=8000( this helps to change the port without rebuilding image again  )
#--name feedback-app -v feedback:/app/feedback -v "$(pwd):/app" -v /app/node_modules feedback-node:volumes

#docker run -d --rm -p 3000:8000 
#--env-file ./.env ( this helps to specify file for environment variables  )
#--name feedback-app -v feedback:/app/feedback -v "$(pwd):/app" -v /app/node_modules feedback-node:volumes
