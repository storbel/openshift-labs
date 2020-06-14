


`docker container run -idt --name dev --net host ubuntu bash`{{execute}}

connect to that container using following command

`docker exec -it dev bash`{{execute}}
Do some modifications on the image, create new files, install software...etc

then exit the container commit container using following command including your own tag with your docker hub id

`docker container commit myimg YOUR_GITHUB_ACCOUNT_NAME/myimg`{{execute}}
After creating image push to docker hub registry

`docker login`{{execute}}
`docker image push YOUR_GITHUB_ACCOUNT_NAME/myimg`{{execute}}