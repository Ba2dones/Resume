# A Static Site using Docker and Nginx

This repo contains code for building a simple static website served using an Nginx container inside Docker. The code for the site is contained in `index.html`. The Dockerfile contains commands to build a Docker Image.

To build a Docker image from the Dockerfile, run the following command from inside this directory

```sh
$ docker build -t resume:1.0 .
```
This will produce the following output

```sh
Sending build context to Docker daemon  17.92kB
Step 1/2 : FROM nginx:alpine
 ---> 0be75340bd9b
Step 2/2 : COPY . /usr/share/nginx/html
 ---> 6103ea73b0a7
Successfully built 6103ea73b0a7
Successfully tagged resume:1.0
```

To run the image in a Docker container, use the following command
```sh
$ docker run -d -p 80:80 resume:1.0
```

This will start serving the static site on port 80. If you visit `http://localhost:80` in your browser, you should be able to see our static site!