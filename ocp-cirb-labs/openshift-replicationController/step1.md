OpenShift Playground
Before you get started we recommend reading the following tips. They explain a bit about how the playground environment is setup and what access you have.

Logging in to the Cluster
When the OpenShift playground is created you will be logged in initially as a cluster admin on the command line. This will allow you to perform operations which would normally be performed by a cluster admin.

Before creating any applications, it is recommended you login as a distinct user. This will be required if you want to log in to the web console and use it.

To login to the OpenShift cluster from the Terminal run:

`oc login -u developer -p developer  [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

This will log you in using the credentials:
Username: developer
Password: developer
Use the same credentials to log into the web console.

In order that you can still run commands from the command line as a cluster admin, the sudoer role has been enabled for the developer account. To execute a command as a cluster admin use the --as system:admin option to the command. For example:

`oc get projects --as system:admin`{{execute}}

Creating your own Project
To create a new project called acs run the command:

`oc new-project acs`{{execute}}

You could instead create the project from the web console. If you do this, to change to the project from the command line run the command:

`oc project acs`{{execute}}


Check the Current project  :

`oc project -q`{{execute}}


Persistent Volume Claims
Persistent volumes have been pre-created in the playground environment. These will be used if you make persistent volume claims for an application. The volume sizes are defined as 100Gi each, however you are limited by how much disk space the host running the OpenShift environment has, which is much less.

To view the list of available persistent volumes you can run:

`oc get pv --as system:admin`{{execute}}


Running Images as a Defined User
By default OpenShift prohibits images from running as the root user or as a specified user. Instead, each project is assigned its own unique range of user IDs that application images have to run as.

If you attempt to run an arbitrary image from an external image registry such a Docker Hub, which is not built to best practices, or requires that it be run as root, it may not work as a result.

In order to run such an image, you will need to grant additional privileges to the project you create to allow it to run an application image as any user ID. This can be done by running the command:

`oc adm policy add-scc-to-user anyuid -z default -n acs --as system:admin`{{execute}}

