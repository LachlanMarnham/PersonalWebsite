FROM python:3.6.5-stretch

MAINTAINER Lachlan Marnham "lachlan.marnham@gmail.com"

## Make bash the default shell
SHELL ["/bin/bash", "-c"]

RUN apt-get -y update && apt-get install -y apache2 \
    less

## Install mod_wsgi. Note that to get this to talk to apache, I had to point the apache *.conf directly towards the
## package at module-load time. See personal_website.conf
RUN pip install --upgrade pip
RUN python --version
RUN pip install mod_wsgi-httpd
RUN pip install mod_wsgi

RUN apt-get clean \
 && apt-get autoremove \
 && rm -rf /var/lib/apt/lists/*

## Copy over and install the requirements
COPY ./requirements.txt /var/www/personal_website/requirements.txt
RUN pip install -r /var/www/personal_website/requirements.txt

## Copy over the apache configuration file
COPY ./server_config/personal_website.conf /etc/apache2/sites-available/personal_website.conf

##  Enable the site and get rid of the default apache2 ships with
RUN a2ensite personal_website
RUN a2enmod headers
RUN rm /etc/apache2/sites-enabled/000-default.conf

## Copy over the wsgi file
COPY ./server_config/personal_website.wsgi /var/www/personal_website/personal_website.wsgi

## Copy shell script to start the server
COPY ./server_config/run_apache.sh /run_apache.sh
RUN chmod -v +x /run_apache.sh

## Copy the app code etc. Putting this in /usr/local means we need to add that to the python path in the *.wsgi file
COPY ./app /usr/local/app/

## Container ports, not host ports
EXPOSE 80
EXPOSE 443

WORKDIR /usr/local/app

# Run the server
CMD  ["/run_apache.sh"]
