#Using nginx as a base image
FROM nginx:alpine
#Then copy our files in the current directory to the files-host directory on nginx image
COPY . /usr/share/nginx/html
#we don't need to expose/change any ports as port 80 is exposed on nginx by default