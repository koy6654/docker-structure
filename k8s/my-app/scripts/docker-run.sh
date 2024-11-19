#delete image, container about docker-tutorial
docker stop docker-tutorial-node
docker rm docker-tutorial-node
docker rmi docker-tutorial:node

#build docker image
docker build -t docker-tutorial:node ./
docker images | grep docker-tutorial:node

#create docker container
# docker create --name docker-tutorial-node docker-tutorial:node
# docker start docker-tutorial-node 
