The Dockerfile is used by the Docker CLI build command. The build command executes each instruction within the Dockerfile. The result is a built Docker Image that can be launched and run your configured app.

The build command takes in some different parameters. The format is docker build -t <build-directory>. The -t parameter allows you to specify a friendly name for the image and a tag, commonly used as a version number. This allows you to track built images and be confident about which version is being started.

Task
Build our static HTML image using the build command below.

`docker build -t ratp-image:v1 . `{{execute}}

You can view a list of all the images on the host using docker images.

The built image will have the name webserver-image with a tag of v1.

The built Image can be launched in a consistent way to other Docker Images. When a container launches, it's sandboxed from other processes and networks on the host. When starting a container you need to give it permission and access to what it requires.

For example, to open and bind to a network port on the host you need to provide the parameter -p <host-port>:<container-port>.

Task
Launch our newly built image providing the friendly name and tag. As it's a web server, bind port 80 to our host using the -p parameter.

`docker run -d --name ratp -p 8080:80 ratp-image:v1`{{execute}}

Once started, you'll be able to access the results of port 80 via curl docker

To render the requests in the browser use the following links

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com

You now have a static HTML website being served by Nginx.