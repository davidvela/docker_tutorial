# Docker Tutorial 
Getting started <br/>
link: https://docs.docker.com/get-started/#recap-and-cheat-sheet
![logo](https://github.com/davidvela/docker_tutorial/blob/master/docker4Beg.png)

## tutorials: 
https://docs.docker.com/samples/#tutorial-labs 
Docker for Beginner: A good “Docker 101” course.
https://github.com/docker/labs/tree/master/beginner/

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

## commands: 

    * docker run <image>
    * docker images  ===     docker image ls  
    * List Docker containers (running, all, all in quiet mode)  ===  ```docker ps``` 
        * docker container ls
        * docker container ls --all
        * docker container ls -aq
    * docker pull <image> -- download docker image 
    * docker container ls -- list all the containers running 
    * 

## 1.0 Running your first container
https://github.com/docker/labs/blob/master/beginner/chapters/alpine.md

``` $ docker pull alpine ``` <br/>
```docker run alpine ls -l ```<br/>
```docker run alpine echo "hello from alpine"``` // 
```docker run alpine /bin/sh ``` -- no output // ```exit ```
```docker run -it alpine /bin/sh ``` -- output because it runs in interactive terminal <br/>
docker ps -a 

# 2.0 Webapps with Docker
https://github.com/docker/labs/blob/master/beginner/chapters/webapps.md<br>
docker run -d dockersamples/static-site -- detach mode 
$ docker stop a7a0e504ca3e
$ docker rm   a7a0e504ca3e
launch container in detach mode: 
docker run --name static-site -e AUTHOR="David" -d -P dockersamples/static-site
$ docker port static-site
$ docker-machine ip default
docker stop static-site
docker rm static-site
IMAGES 
docker search 
Types: base / child images %% Official / User 
## 2.3 create your first image : Flask 
1. Create a Python Flask app that displays random cat pix
2. Write a Dockerfile
3. Build the image
4. Run your image
5. Push image 

1, 2 -- create files 
3 build : (simple command) optional:  -t tag name; location Dockerfile  . current dir
    ```$ docker build -t davidvela/myfirstapp . ```
4 run image: 
    ```$ docker run -p 8888:5000 --name myfirstapp davidvela/myfirstapp```
    website: http://localhost:8888

5 push image to docker hub -- docker login -> user and password 
    ```docker push davidvela/myfirstapp```
finally docker stop myfirstapp and docker rm myfirstapp
or => docker rm -f myfirstapp

new tag: 
    ```$ docker build -t davidvela/myfirstapp:v1 . ```
    ```docker push davidvela/myfirstapp:v1```


# 3.0 Deploying an app to a Swarm
Swarm is an open-source container orchestration platform\
Swarm turns a pool of Docker hosts into a virtual, single host.
<br/>
## VOTING APP 
https://github.com/dockersamples/example-voting-app
five components:

1. Python webapp which lets you vote between two options
2. Redis queue which collects new votes
3. .NET worker which consumes votes and stores them in…
4. Postgres database backed by a Docker volume
5. Node.js webapp which shows the results of the voting in real time


# 4.0 -- mlflow in docker container 
1.  create mlflow example 
2. Write a Dockerfile
3. Build, Run, Push the image
