FROM node:14

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret

CMD ["npm","start"]

#running mongodb with authentication 
# docker run -v data:/data/db -e MONGO_INITDB_ROOT_USERNAME=admin -e
# MONGO_INITDB_ROOT_PASSWORD=secret --name mongodb -d --rm --network goals-net mongo

#auth string to connect to mongodb
#"mongodb://admin:secret@mongodb:27017/course-goals?(authSource=admin)important ",

#docker run --name goals-backend -p 80:80 -d -e MONGODB_USERNAME=admin  --network goals-net -v logs:/app/logs -v "$(pwd):/app" --rm -v /app/node_modules goals-node 