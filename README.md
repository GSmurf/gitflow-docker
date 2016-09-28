#gitflow-docker
git-flow in a container

I got annoyed getting [git-flow](https://github.com/nvie/gitflow) to work on Windows, so put it in a Docker Container. 

Inspiration taken from:  [Jess' blog](https://blog.jessfraz.com/post/docker-containers-on-the-desktop/)

#Quickstart

1. Change to directory where you have the git repo you want to use git-flow on
1. run
  * Docker CLI

            docker run --rm -v `pwd`:/var/git-repo-home \
                   gismo/gitflow \
                   <your gitflow command line>

#Tips

When using Docker in windows, volume mapping requires the explict path startig with a double slash e.g.

    -v //c/users/kramos/working/my-git-repo/:/var/git-repo-home

To use easely this container, create an alias :
```
alias gf='docker run --rm -v `pwd`:/var/git-repo-home -v ~/.ssh:/home/vagrant/.ssh gismo/gitflow'
```
And use it like this :
```
gf init
```
