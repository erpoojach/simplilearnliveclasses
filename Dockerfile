#How we can write docker file?

## 1. FROM : your docker file always starts with from. IT defines the base image from which the container would be created.
##eg FROM ubuntu    , FROM alpine

## 2. RUN : the softwares or dependencies you want to install when the conainer would be created.
##eg RUN apt install apache2 -y

## 3. MAINTAINER : the person who is maintaining the docker file.
## eg. MAINTAINER pooja<er.poojach@gmail.com>

## 4. COPY : Lets say there is a file in the machine (HOST) an i want to copy the file in the container when the container would be created then it will have the same file in it.
## eg. COPY file1.txt /tmp/file1.txt
## (this command will copy the file1.txt from the machine to the tmp directory of the container.)


## one directory have one docker file with name Dockerfile  (D capital)
FROM ubuntu
RUN apt update -y
RUN apt-get install apache2 -y
RUN service apache2 start
MAINTAINER Pooja Choudhary<er.poojach@gmail.com>
COPY index.html /var/www/html/index.html



##we have created Dockerfile.  Now we need to execute the Dockerfile by creating custom image.
##docker build -t marioimage .   
# build - to execute the Dockerfile
# -t tag
# marioimage  custom image name
#.  Dockerfile present in current directory
## this command will build the dockerfile in current directory (.) and tag with the name marioimage

