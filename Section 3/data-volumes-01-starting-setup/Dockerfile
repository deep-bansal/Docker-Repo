FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# doesn't work, it is anonymous volume
#it creates a volume which exist until we don't remove container from the machine until then only it exist
# VOLUME [ "/app/feedback" ]

CMD [ "node","server.js" ]

#named container they stay persistent all the time even if container is removed
#docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback feedback-node:volumes

#bind mounts

#docker run -p 3000:80 --rm --name feedback-app -d (-v feedback2:/app/feedback) volume making command to be written
# (-v "/Users/deepbansal/Documents/Docker/Section 3/data-volumes-01-starting-setup:/app") added this now also to do mounting feedback-node:volumes  
#when we run this command it says express not found means dependency missing but earlier with volumes working fine means something happend when we 
#added bind mounts 


#this is one command
#(docker run -d --rm -p 3000:80  --name feedback-app 
#-v feedback:/app/feedback (named volume for persistent data even if container removed)
# -v "$(pwd):/app" (bind mount for code changes)
#-v /app/node_modules (anonymous volume that saves all folders inside container to be overwritten by bind mount) 
#feedback-node:volumes)