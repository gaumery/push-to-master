FROM debian:stable-slim

LABEL "maintainer"="tcitry <tcitry@gmail.com>"
LABEL "repository"="https://github.com/tcitry/push-to-master"
LABEL "homepage"="https://github.com/marketplace/actions/push-to-master"

LABEL "com.github.actions.name"="Push to master"
LABEL "com.github.actions.description"="Push to master or other branch"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="purple"

COPY LICENSE README.md /

RUN apt-get -y update && \
    apt-get -y install git && \
    apt-get clean

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
