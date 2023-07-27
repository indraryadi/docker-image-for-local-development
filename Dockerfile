FROM node:18.7.0

ENV USER=kira 

RUN apt-get update && apt-get install -y \
	vim \
	git

RUN mkdir -p /home/$USER

WORKDIR /home/$USER

COPY . .
VOLUME /home/$USER
RUN chown -R node:node /home/$USER

USER node

