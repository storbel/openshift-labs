Docker Images start from a base image. The base image should include the platform dependencies required by your application, for example, having the JVM or CLR installed.

This base image is defined as an instruction in the Dockerfile. Docker Images are built based on the contents of a Dockerfile. The Dockerfile is a list of instructions describing how to deploy your application.

In this example, our base image is the Alpine version of Nginx. This provides the configured web server on the Linux Alpine distribution.

Task
Create your Dockerfile for building your image by copying the contents below into the editor.

Create a Dockerfile file if not already created

`touch Dockerfile`{{execute}}

Double-click the Dockerfile

<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM nginx:alpine
COPY ratp /usr/share/nginx/html
</pre>
The first line defines our base image. The second line copies the content of the current directory into a particular location inside the container.