Portainer - Web console to managing Docker Environemnts
In this Section we are goiing for portainer web console which will allow you web based application which manages your local or remote docker environment. you can also visit the portainer

`docker volume create portainer_data`{{execute}}
[output]

portainer_data
After creating volume excute following command

`docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer`{{execute}}


which will aloow container to connect to docker daemon and mange its on.

`docker ps`{{execute}}


Check the Portainer application :

http://[[HOST_SUBDOMAIN]]-9000-[[KATACODA_HOST]].environments.katacoda.com
