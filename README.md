#gitflow-docker
git-flow in a container

I got annoyed getting [git-flow](https://github.com/nvie/gitflow) to work on Windows, so put it in a Docker Container. 

Inspiration taken from:  [Jess' blog](https://blog.jessfraz.com/post/docker-containers-on-the-desktop/)

#Quickstart

1. Change to directory where you have the git repo you want to use git-flow on
1. run
  * Docker CLI

            docker run --rm -v `pwd`:/var/git-repo-home \
                   kramos/gitflow \
                   <your gitflow command line>

