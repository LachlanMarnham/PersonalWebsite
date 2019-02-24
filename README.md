## TODO
* Add content:
    - CV
    - Music
    - Projects
    - Partita
* Set up SSL
* Add https VirtualHost and permanent redirect *:80 -> *:443
* Make Apache serve static files
* Fix homepage animations for non-chrome browsers
* Implement a front end toolchain for ugly-fying the JavaScript and so on

## Docker workflow

Build the image
```shell
$ docker build -t personal_website_beta <path>
```

Run the container
```shell
$ docker run -p <host_port>:<container_port> <image_name>
```

Get list of running containers
```shell
$ docker ps
```

Open a shell into the container
```shell
$ docker exec -it <container_id> /bin/bash
```

Run a container, capture its image ID, and use that to open a bash shell
```shell
docker exec -it $(docker run -v ~/Documents/PersonalWebsite/app:/usr/local/app -d -p 80:80 -p 443:443 personal_website_beta) /bin/bash
```

Kill a running container
```shell
$ docker kill <container_id>
```

Once there is a working beta image to deploy, build it as personal_website_production.
Find the image ID of the production image (<piid>) a tag it
```shell
$ docker tag <piid> lachlanmarnham/personal_website_production:latest
```

On the server, run the container in detached mode
```shell
docker run -d --restart=always -p 80:80 -p 443:443 lachlanmarnham/personal_website_production:latest
```