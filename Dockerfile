# base image - nginx with tag "latest"
FROM nginx:latest

# Adding custom index.html
ADD webpage/index.html /usr/share/nginx/html/
ADD webpage/assets /usr/share/nginx/html/assets

# Adding read permissions to custom index.html
RUN chmod +r /usr/share/nginx/html/index.html

# 'nginx -g daemon off" will run as default command when any container is run that uses the image that was built using this Dockerfile"
CMD ["nginx", "-g", "daemon off;"]