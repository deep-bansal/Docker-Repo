FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "app.js"]

#docker run --rm  -p 3000:3000 --name favorites favorites-node 
#if we don't do anything and run this it gives error as mongodb connection not possible 
#but apis work