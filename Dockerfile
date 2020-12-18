FROM ubuntu:20.04

WORKDIR /usr/src/
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

EXPOSE 8080

RUN git clone https://github.com/SnPop/doodlestudent.git
WORKDIR /doodlestudent/
WORKDIR /api/
CMD ["docker-compose", "up"]
 
WORKDIR ../front/
CMD ["npm install"]
CMD ["npm start"]
