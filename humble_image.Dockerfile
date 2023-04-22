# syntax=docker/dockerfile:1
ARG base_image=registry.dorabot.com/moma/v2/mob_images/humble:feature-humble-mobilebase 

FROM ${base_image} as core

SHELL [ "/bin/bash", "-o", "pipefail", "-c"]

ARG USER=bot
WORKDIR /home/bot

# apt install navigation2
COPY apt.bash /home/bot
RUN ./apt.bash


