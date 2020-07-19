FROM ubuntu:18.04

RUN apt-get update && \
    apt-cache search x11 && \
    apt-get install -y x11-apps sudo mesa-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ARG DOCKER_UID=1000
ARG DOCKER_GID=1000
ARG DOCKER_USER=ubuntu
ARG DOCKER_PASSWORD=ubuntu

RUN groupadd --gid 1000 ${DOCKER_USER}
RUN useradd --create-home --uid ${DOCKER_UID} --gid ${DOCKER_GID} --groups sudo --shell /bin/bash ${DOCKER_USER} \
&& echo ${DOCKER_USER}:${DOCKER_PASSWORD} | chpasswd

USER ${DOCKER_USER}
WORKDIR /home/${DOCKER_USER}

