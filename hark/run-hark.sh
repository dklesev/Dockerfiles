#!/bin/bash

IMAGENAME=hark

sudo docker inspect $IMAGENAME 2>&1 | grep -q "No such image"
if [ $? -eq 0 ];then
  echo "#Couldn't find image $IMAGENAME, will attempt to build"
  read -p "Press [Enter] key to continue"
  curl https://raw.github.com/Thermionix/Dockerfiles/master/hark/Dockerfile | docker build -t "$IMAGENAME" -
fi

JOB=$(sudo docker run -d $IMAGENAME)
PORT=$(sudo docker port $JOB 3000)

echo -e "image:$IMAGENAME container:$JOB accesible on port:$PORT\n"

echo "waiting for express to start, then curl http://localhost:$PORT/"
sleep 5
curl http://localhost:$PORT/

echo -e "\nwill stop container:$JOB"
read -p "Press [Enter] key to continue"
sudo docker stop $JOB
