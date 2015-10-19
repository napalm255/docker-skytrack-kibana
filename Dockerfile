FROM nginx

RUN apt-get update; apt-get upgrade -y
RUN apt-get install -y php-cli git

RUN git clone https://github.com/napalm255/skytrack.org.git /opt/skytrack

RUN  echo 'daemon off;' >> /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx"]
