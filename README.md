# nodejs docker image

1. build the image
   ```
   docker build -t {image_name} .
   ```
2. run the image 
   ```
   docker run -it --rm --name {container_name} -v $(pwd):/home/development {image_name} bash
   ```
