FROM python:3.6.5-stretch

MAINTAINER Lachlan Marnham "lachlan.marnham@gmail.com"

# Make bash the default shell
SHELL ["/bin/bash", "-c"]

#RUN apt-get -y update
#RUN apt-get install -y @development-tools
#RUN apt-get update && apt-get install -y apache2 \
#    libapache2-mod-wsgi \
#    less

RUN apt-get -y update && apt-get install -y apache2 \
#    libapache2-mod-wsgi-py3 \
    less

RUN pip install --upgrade pip
RUN python --version
RUN pip install mod_wsgi-httpd
RUN pip install mod_wsgi

RUN apt-get clean \
 && apt-get autoremove \
 && rm -rf /var/lib/apt/lists/*

#RUN dnf install -y python36
#RUN dnf install -y wget
##RUN dnf clean all
##RUN dnf autoremove
#
#RUN python3.6 -m ensurepip
#RUN wget -O mod_wsgi-4.6.4.tar.gz https://github.com/GrahamDumpleton/mod_wsgi/archive/4.6.4.tar.gz
#RUN tar xvfz mod_wsgi-4.6.4.tar.gz
#RUN ./mod_wsgi-4.6.4/configure --with-python=/usr/bin/python3.6
#RUN make --file ./Makefile
#RUN make install


## Copy over and install the requirements
COPY ./requirements.txt /var/www/personal_website/requirements.txt
RUN pip install -r /var/www/personal_website/requirements.txt

## Copy over the apache configuration file and enable the site
COPY ./server_config/personal_website.conf /etc/apache2/sites-available/personal_website.conf
RUN a2ensite personal_website
RUN a2enmod headers
RUN rm /etc/apache2/sites-enabled/000-default.conf

## Copy over the wsgi file
#COPY ./server_config/personal_website.wsgi /var/www/wsgi-bin/personal_website.wsgi
COPY ./server_config/personal_website.wsgi /var/www/personal_website/personal_website.wsgi

## Copy shell script to start the server
COPY ./server_config/run_apache.sh /run_apache.sh
RUN chmod -v +x /run_apache.sh
#

#
COPY ./app /usr/local/app/
#
## Change commands python and python3 to mean python3.6
#RUN rm -f /usr/bin/python && ln -s /usr/bin/python3.6 /usr/bin/python
#RUN rm -f /usr/bin/python3 && ln -s /usr/bin/python3.6 /usr/bin/python3
#
#
## Container ports, not host ports
EXPOSE 80
EXPOSE 443
#
WORKDIR /usr/local/app

# Run the server
CMD  ["/run_apache.sh"]
