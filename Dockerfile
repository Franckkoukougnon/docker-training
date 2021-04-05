FROM ubuntu
LABEL maintainer="franck@gmail.com"

RUN apt-get update
RUN apt install -y nginx

ADD static-website-example  /var/www/html

EXPOSE 8080


CMD ["nginx", "-g", "daemon off;"]
