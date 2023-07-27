# nodejs docker image

How to use:
a. Create base project:
1. build the image
   ```
   docker compose -f docker-compose.yml up --build
   ```
2. run the image 
   ```
   docker run -it --rm --name {container_name} -v $(pwd):/home/development {image_name} bash
   ``` 
3. remote the container (can be using vscode remote explorer extension) and then create the basic service of (express/react/next/etc)
5. after create the service, change the port and command on docker-compose
   ```
   expose:
      - 5000 # replace with your service port
    ports:
      - 5000:5000 # replace with your service port
    command: node index.js # replace with running service command, this example is express
   ```
6. stop the container, we do step 1-4 bc without docker compose we can't send request from outside container, so need to create base project setup first
7. rebuild the image and container
   ```
   docker compose -f docker-compose.yml up -d --build
   ```
8. check docker container
   ```
   docker ps
   ```
10. test access from local
    can use curl for api, browser for next/react
