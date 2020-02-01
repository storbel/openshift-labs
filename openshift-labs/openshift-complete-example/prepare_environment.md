Logging in to the Cluster
When the OpenShift playground is created you will be logged in initially as a cluster admin on the command line. This will allow you to perform operations which would normally be performed by a cluster admin.

Before creating any applications, it is recommended you login as a distinct user. This will be required if you want to log in to the web console and use it.

To login to the OpenShift cluster from the Terminal run:

`oc login -u developer -p developer  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

This will log you in using the credentials:
Username: developer
Password: developer
Use the same credentials to log into the web console.


Creating your own Project
To create a new project called acs run the command:

`oc new-project voting-application`{{execute}}

You could instead create the project from the web console. If you do this, to change to the project from the command line run the command:

`oc project  voting-application`{{execute}}



CLI for application :
======================


`oc new-project voting-application`

`oc project  voting-application`

`oc new-app https://github.com/storbel/example-voting-app.git --name=vote --context-dir=vote -e -e REDIS_PASSWORD=redis_password`

`oc expose svc/vote`

`oc new-app redis-ephemeral --name redis -e REDIS_PASSWORD=redis_password`

`oc new-app postgresql-ephemeral --name db     -e DATABASE_SERVICE_NAME=db -e POSTGRESQL_USER=postgres_user     -e POSTGRESQL_PASSWORD=postgres_password     -e POSTGRESQL_DATABASE=postgres`

`oc get svc  postgresql -o yaml | sed 's/postgresql/mysql/g' | oc replace -f -`


`oc new-app https://github.com/storbel/example-voting-app.git --context-dir=result --name=result   --strategy=docker -e PORT=8080`

`oc expose svc/result`
`oc new-app https://github.com/storbel/example-voting-app.git --context-dir=worker --name=worker   --strategy=docker `
