# docker_gui

## setting
~~~
$ xhost +
$ docker build -t try-gui .
~~~

## start
~~~
$ docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
--device=/dev/dri:/dev/dri \
--device=/dev/snd:/dev/snd \
--name gui_work try-gui:latest /bin/bash
~~~~

## test
~~~
ubuntu$ xeyes
ubuntu$ glxgears
~~~

## using docker-compose

~~~
$ sudo curl -L https://github.com/docker/compose/releases/download/1.26.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose

$ docker-compose build
$ docker-compose up

~~~


