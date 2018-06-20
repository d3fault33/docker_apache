#/bin/bash
cd ~/container
docker build -t py_apache .
docker RUN -d -p 80:80 -p 4000:4000 py_apache
