# Docker Tutorial 
Getting started <br/>
link: https://docs.docker.com/get-started/#recap-and-cheat-sheet
![logo](https://github.com/davidvela/docker_tutorial/blob/master/docker4Beg.png)

## tutorials: 
https://docs.docker.com/samples/#tutorial-labs 
Docker for Beginner: A good “Docker 101” course.
https://github.com/docker/labs/tree/master/beginner/


## commands: 

    * docker run <image>
    * docker images  ===     docker image ls  
    * List Docker containers (running, all, all in quiet mode)
        * docker container ls
        * docker container ls --all
        * docker container ls -aq
    * docker pull <image> -- download docker image 
    * docker container ls -- list all the containers running 

## 1.0 Running your first container
https://github.com/docker/labs/blob/master/beginner/chapters/alpine.md

``` $ docker pull alpine ```
```docker run alpine ls -l ```
docker run alpine echo "hello from alpine"
$ docker run alpine /bin/sh -- no output
 
