FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul

RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean
ENTRYPOINT apachectl –D FOREGROUND
ENV env_var_name TestingENV
ADD ./index.html /var/www/html
