# docker image for postgresql

#### create an image
1. create an image an run the image
  ```
  docker compose -f docker-compose.yml up -d --build
  ```
  
2. check the container up and run
  ```
  docker ps
  ```

#### connect to postgresql
a. if use by access inside container
  - go inside the container
  ```
  docker exec -it my_postgre_15 bash
  ```
  - login using psql
  ```
  psql -U kira -h localhost -d test_db
  ```

b. if use from outside container (ex: using prisma), change credential on .env after generate prisma init
  ```
  default:
  DATABASE_URL="postgresql://{USER}:{PASSWORD}@localhost:{PORT}/{DB}?schema=public"

  using credential
  DATABASE_URL="postgresql://kira:password@localhost:5433/test_db?schema=public"
  ```
and then try to create model and migrate the table
