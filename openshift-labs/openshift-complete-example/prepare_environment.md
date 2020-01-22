Logging in to the Cluster
When the OpenShift playground is created you will be logged in initially as a cluster admin on the command line. This will allow you to perform operations which would normally be performed by a cluster admin.

Before creating any applications, it is recommended you login as a distinct user. This will be required if you want to log in to the web console and use it.

To login to the OpenShift cluster from the Terminal run:

`oc login -u developer -p developer  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

This will log you in using the credentials:
Username: developer
Password: developer
Use the same credentials to log into the web console.

In order that you can still run commands from the command line as a cluster admin, the sudoer role has been enabled for the developer account. To execute a command as a cluster admin use the --as system:admin option to the command. For example:

`oc get projects --as system:admin`{{execute}}

Creating your own Project
To create a new project called acs run the command:

`oc new-project voting-application`{{execute}}

You could instead create the project from the web console. If you do this, to change to the project from the command line run the command:

`oc project  voting-application`{{execute}}
