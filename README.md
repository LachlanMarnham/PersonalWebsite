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

Build the image, image_name == personal_website_(beta|production)
```shell
$ docker build -t <image_name> <PATH>
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

Kill a running container
```shell
$ docker kill <container_id>
```
