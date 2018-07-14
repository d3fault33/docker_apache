#/bin/bash
cd ~/container
#building container py_apache with contents from working directory
docker build -t py_apache .
#running container in background exposing ports 80 and 4000
docker RUN -d -p 80:80 -p 4000:4000 py_apache
