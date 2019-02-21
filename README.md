# This is my personal website... #

...it's probably of no interest to you, but GitHub is more convenient than DropBox.

Build the image, image_name == personal-website-(beta|production)
```shell
$ docker build -t <image_name> <PATH>
```

Run the container
```shell
$ docker run -p <host_port>:<container_port> <image_name>
```
