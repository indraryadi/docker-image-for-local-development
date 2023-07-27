FROM node:18.7.0

ENV PROJECT_DIR=development 

RUN apt-get update && apt-get install -y \
	vim \
	git

RUN mkdir -p /home/$PROJECT_DIR

WORKDIR /home/$PROJECT_DIR

COPY . .
VOLUME /home/$PROJECT_DIR
RUN chown -R node:node /home/$PROJECT_DIR

USER node

