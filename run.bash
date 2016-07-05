#!/usr/bin/env bash


SCRIPT="`readlink -e $0`"
SCRIPTPATH="`dirname $SCRIPT`"
echo $SCRIPTPATH

source ${SCRIPTPATH}/config.bash

echo "## workspace: ##"
echo $WORKSPACE

MODULENAME="atomjside"

#install docker if not done before
echo "try install docker if not exists"
if which docker >/dev/null; then
    echo "docker exists: wont install"
    #service docker start
else
  echo "docker not exists: i will install"
  curl -sSL https://get.docker.com/ | sh
fi



#delete previous container
echo "delete old container"
docker stop $MODULENAME
docker rm $MODULENAME

#build docker image
echo "delete old image: $MODULENAME"
#docker rmi $MODULENAME
echo "building image"
docker build -t $MODULENAME $SCRIPTPATH/docker


#allow xHost
xhost +

#make and run container
echo "make container"
echo "IMPORTANT: DONT close this terminal or atom.io will close"
docker run --name $MODULENAME \
--privileged \
-v $WORKSPACE:/workspace \
-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
-v /dev/shm:/dev/shm \
-v $SCRIPTPATH/.atom:/root/.atom \
-v $SCRIPTPATH/mapped:/mapped \
-e DISPLAY=${DISPLAY} \
 $MODULENAME

#disallow xHost
xhost -
