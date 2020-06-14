In this step, we will have an overview of the Docker essantial cli commands

Essential Container Operations - list, logs, exec, cp, inspect, stop, rm
In this section we are looking for some of the essential container operations like list,logs, exec etc.

First we do list the containers **ps**


`docker ps -a`{{execute}}

List docker images :

`docker images`{{execute}}

Run a docker container :



`docker container run -idt  hello-world`{{execute}}

Change the container name **rename**

`docker rename hello-world  myhelloworld`{{execute}}



Execute a command inline on a docker container **exec**:

`docker exec myhelloworld ps aux`{{execute}}

Inspect a docker image **inspect** :

`docker inspect hello-world`{{execute}}


Copy a file into container **copy**:

`echo "new file"> testfile`{{execute}}


`docker cp testfile myhelloworld:/opt`{{execute}}

Check updated filesystem **diff** :


`docker diff myhelloworld`{{execute}}


Stop a container **stop**:

`docker stop myhelloworld`{{execute}}



Publishing containers using port mapping :

`docker container run -idt -p 8888:80 nginx`{{execute}}

https://[[HOST_SUBDOMAIN]]-8888-[[KATACODA_HOST]].environments.katacoda.com

`docker ps`{{execute}}

see all the layers of docker image **history**:

`docker image history nginx`{{execute}}

Grab a docker image locally **pull**:

`docker pull ubuntu`{{execute}}


Check image volatile data :

`docker container run -idt --name dev --net host ubuntu bash`{{execute}}


`docker ps `{{execute}}
`docker exec -it dev bash`{{execute}}
`apt-get update
apt-get install vim
touch /opt/testfile`{{execute}}

Get out of the container shell :
`exit`{{execute}}
Stop the container :
`docker stop dev`{{execute}}

`docker stop dev`{{execute}}