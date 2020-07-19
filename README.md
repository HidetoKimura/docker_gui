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

