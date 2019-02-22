FROM docker.io/fedora

MAINTAINER Lachlan Marnham "lachlan.marnham@gmail.com"

RUN dnf -y update
RUN dnf install -y httpd
RUN dnf install -y python36
RUN dnf install -y python3-pip
RUN dnf install -y python3-mod_wsgi
RUN dnf clean all
RUN dnf autoremove

# Copy over and install the requirements
COPY ./requirements.txt /var/httpd/requirements.txt
RUN pip3 install -r /var/httpd/requirements.txt

# Copy over the apache configuration file
COPY ./server_config/web_server.conf /etc/httpd/conf.d/web_server.conf
COPY ./server_config/run_apache.sh /run_apache.sh

# Copy shell script to start the server
RUN chmod -v +x /run_apache.sh

# Copy over the wsgi file
COPY ./server_config/web_server.wsgi /var/www/wsgi-bin/web_server.wsgi

#COPY ./run.py /var/www/apache-flask/run.py
COPY ./app /usr/local/app/

# Container ports, not host ports
EXPOSE 80
EXPOSE 443

WORKDIR /usr/local/app

# Run the server
CMD  ["/run_apache.sh"]
