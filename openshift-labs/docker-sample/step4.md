The built Image can be launched in a consistent way to other Docker Images. When a container launches, it's sandboxed from other processes and networks on the host. When starting a container you need to give it permission and access to what it requires.

For example, to open and bind to a network port on the host you need to provide the parameter -p <host-port>:<container-port>.

Task
Launch our newly built image providing the friendly name and tag. As it's a web server, bind port 80 to our host using the -p parameter.

`docker run -d -p 80:80 webserver-image:v1`{{execute}}

Once started, you'll be able to access the results of port 80 via curl docker

To render the requests in the browser use the following links

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com

You now have a static HTML website being served by Nginx.