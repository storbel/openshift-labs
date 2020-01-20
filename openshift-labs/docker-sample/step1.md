


In this step we will check the Docker environment


Get the Docker version

`docker version`{{execute}}

Check the output

Docker hello world image

`docker run hello-world`{{execute}}

Running your first container
when your enviromnment ready you can start your first docker container . when you running your first docker container you need docker registry. Go to docker public registry. when you visit docker hub you can see bunch of images available here.

we are going to pick basic os image alpine . alpine is distribution of linux, ubuntu etc why we are choosing this image because of footprint of image and you can look at the size of the image look like 2 0r 3 mb that is relly good for smoke testing and running smaller images.

Now we have a basic understanding of docker command and sub commands, let us dive straight into launching our very first container

`docker container run alpine:3.6 uptime`{{execute}}

we are using docker client to run a application/command uptime using an image by name alpine

What happened? This command will

- Pull the alpine image file from docker hub, a cloud registry
- Create a runtime environment/ container with the above image
- Launch a program (called uptime) inside that container
- Stream that output to the terminal
- Stop the container once the program is exited

Let's see what happens when we run that command again


`docker container run alpine:3.6 uptime`{{execute}}

Making container persist with -idt options
We can interact with docker containers by giving -it flags at the run time. These flags stand for

i - Interactive
t - tty
d - detach

Making container persist with -idt options
We can interact with docker containers by giving -it flags at the run time. These flags stand for

i - Interactive
t - tty
d - detach

`docker container run -it alpine:3.4 sh`{{execute}}

As you see, we have landed straight into sh shell of that container. This is the result of using -it flags and mentioning that container to run the sh shell. Don't try to exit that container yet. We have to execute some other commands in it to understand the next topic

if you go inside the container

Like a full fledged OS, Docker container has its own namespaces This enables Docker container to isolate itself from the host as well as other containers Run the following commands and see that alpine container has its own namespaces and not inheriting much from host OS

`cat /etc/issue`{{execute}}

Run the command below :
`ps aux`{{execute}}

then :

`ifconfig`{{execute}}

