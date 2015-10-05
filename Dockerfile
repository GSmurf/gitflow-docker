FROM ubuntu
MAINTAINER kramos

RUN apt-get update 
RUN apt-get install -y git-flow

ENV $USER safe-user
ENV WORKDIR /var/git-repo-home
ENV UID 667

RUN useradd -d $WORKDIR -u $UID -m -s /bin/bash safeuser

VOLUME /var/git-repo-home

WORKDIR /var/git-repo-home

USER safeuser

ENTRYPOINT ["git", "flow"]

