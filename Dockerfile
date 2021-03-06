FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl apache2 nano python3
RUN ln /usr/bin/python3 /usr/bin/python
RUN apt-get -y install python3-pip
RUN ln /usr/bin/pip3 /usr/bin/pip
RUN pip install --upgrade pip
RUN pip install hug
WORKDIR /app
COPY . /app

EXPOSE 80
EXPOSE 8080
CMD ["apache2ctl","-D","FOREGROUND"] 
CMD ["hug","-f","status.py"]
