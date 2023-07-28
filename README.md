# nodejs docker image

How to use:
1. build the image
   ```
   docker compose -f docker-compose.yml up --build
   ```
2. run the image 
   ```
   docker run -it --rm --name {container_name} -v $(pwd):/home/development {image_name} bash/ash
   ``` 
3. then create the basic service of (express/react/next/etc)
4. after create the service, change the port and uncomment the command on docker-compose
   ```
   expose:
      - 5000 # replace with your service port
    ports:
      - 5000:5000 # replace with your service port
    command: nodemon index.js # replace with running service command, this example is running express, if react npm run dev
   ```
5. stop the container,

we do step 1-4 bc when start service from inside container 'node index.js' after done step 2-4, we can't send request from outside container (check docker ps, there are no port open on container),so we need to running service when start the docker-compose so need to create base project first and then setup and run it by add command on docker-compse.yml file

6. rebuild the image and container
   ```
   docker compose -f docker-compose.yml up -d --build
   ```
7. check docker container
   ```
   docker ps
   ```
8. test access from local
    can use curl for api, browser for next/react
   ```
   curl http://localhost:{PORT}/{endpoint}
   ```

9. if want to go inside container
   ```
   docker exec -it {container_name} bash/ash
   ```
