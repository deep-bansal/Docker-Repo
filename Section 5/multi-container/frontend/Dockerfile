FROM node:14

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]

#docker run --name goals-frontend -p 3000:3000 -d --rm --network goals-net -v
# "$(pwd):/app" -v /app/node_modules goals-react