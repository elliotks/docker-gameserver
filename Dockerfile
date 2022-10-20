#
# LinuxGSM Counter Strike: Global Offensive Dockerfile
#
# https://github.com/GameServerManagers/docker-csgoserver
#

FROM gameservermanagers/linuxgsm:ubuntu-22.04

LABEL maintainer="LinuxGSM <me@danielgibbs.co.uk>"

ENV DEBIAN_FRONTEND noninteractive
ENV GAMESERVER csgoserver
ENV LGSM_GITHUBUSER gameservermanagers
ENV LGSM_GITHUBREPO LinuxGSM
ENV LGSM_GITHUBBRANCH master

ARG USERNAME=linuxgsm
ARG UID=1000
ARG GID=$UID

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "bash","./entrypoint.sh" ]
