FROM centos:latest
RUN yum install -y nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./ /usr/share/nginx/html/Fastcampus-web-deploy
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"] 