# https://hub.docker.com/r/fedora/apache/dockerfile
# https://github.com/Craicerjack/apache-flask/blob/f232e60c39fcd480fbabab6308eeaf24f4a9d5ae/Dockerfile

FROM docker.io/fedora

MAINTAINER Lachlan Marnham "lachlan.marnham@gmail.com"

RUN dnf -y update \
 && dnf install -y httpd \
    python3-pip\
  #  libapache2-mod-wsgi \
  #  build-essential \
 && dnf clean all \
 && dnf autoremove

# Copy over and install the requirements
COPY ./requirements.txt /var/httpd/requirements.txt
RUN pip3 install -r /var/httpd/requirements.txt

# Copy over the apache configuration file and enable the site
COPY ./apache-flask.conf /etc/apache2/sites-available/apache-flask.conf
RUN a2ensite apache-flask
RUN a2enmod headers

# Copy over the wsgi file
COPY ./apache-flask.wsgi /var/www/apache-flask/apache-flask.wsgi

# Activate the new apache config
# RUN ["/bin/bash/", "service apache2 reload"]

COPY ./run.py /var/www/apache-flask/run.py
COPY ./app /var/www/apache-flask/app/

EXPOSE 80

WORKDIR /var/www/apache-flask


CMD  /usr/sbin/apache2ctl -D FOREGROUND
# The commands below get apache running but there are issues accessing it online
# The port is only available if you go to another port first
# ENTRYPOINT ["/sbin/init"]
# CMD ["/usr/sbin/apache2ctl"i]
