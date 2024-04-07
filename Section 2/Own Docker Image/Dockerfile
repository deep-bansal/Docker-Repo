#setup instruction for our image

FROM node      
# build ur image on base image

WORKDIR /app
#working directory of container
#all commands run in this path

# COPY . /app
#files that need to go in image
#. copy all folders and files except docker file same folder in which docker file is present
#/app will copy all files and folders to subfolder app in container 
#every container has its own file system

#after setting WORKDIR

COPY . ./
#everything relative to WORKDIR path
# we can also write  COPY . /app

RUN npm install 
#by default runs on WORKDIR folder in docker container
# set working directory WORKDIR before copying

EXPOSE 80
#docker container is isolated and has own network if we start any port
#on container then we need to explicitely throw it out of container


# RUN node server.js
#will be wrong doing it here
#executed when image is built
#all these are instructions to docker when image is built
#image should be template
#start container when we start container


CMD ["node","server.js"]
#should be last always
#now these are only instructions written by us 
#we now need to build image out of it


# as an optimisation we can do

# FROM node  

# WORKDIR /app

# COPY package.json /app

# RUN npm install 

# COPY . ./

# EXPOSE 80

# CMD ["node","server.js"]

# container doesn't copy the image code env it utilises it only it adds a layer over it