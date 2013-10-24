Dockerfiles
===========

Use with Docker http://www.docker.io

Most of the entries in this repo are in development, I've moved the more completed ones into there own repositories

To build an image with docker is pretty simple:

    cd casperjs
    docker build -t="casperjs" .
    
Or without cloning the repository (if dockerfile has no file dependencies)

    curl -s https://raw.github.com/Thermionix/Dockerfiles/master/casperjs/Dockerfile | sudo docker build -t="casperjs" -

Then to run that image and attach to it at the same time:

    docker run -i -t casperjs
    
Or to run it in the background
  
    docker run -d casperjs
