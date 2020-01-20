

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

`oc new-project acs`{{execute}}

You could instead create the project from the web console. If you do this, to change to the project from the command line run the command:

`oc project acs`{{execute}}


Deployment configurations are deploymentConfig OpenShift Container Platform API resources which can be managed with the oc command like any other resource. The following is an example of a deploymentConfig resource:


`oc create -f helloworld.yaml`{{execute}}

    - The pod template of the frontend deployment configuration describes a simple Ruby application.
    - There will be 5 replicas of frontend.
    - A configuration change trigger causes a new replication controller to be created any time the pod template changes.
    - An image change trigger trigger causes a new replication controller to be created each time a new version of the origin-ruby-sample:latest image stream tag is available.
    - The Rolling strategy is the default way of deploying your pods. May be omitted.
    - Pause a deployment configuration. This disables the functionality of all triggers and allows for multiple changes on the pod template before actually rolling it out.
    - Revision history limit is the limit of old replication controllers you want to keep around for rolling back. May be omitted. If omitted, old replication controllers will not be cleaned up.
    - Minimum seconds to wait (after the readiness checks succeed) for a pod to be considered available. The default value is 0.