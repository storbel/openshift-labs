#### Mount Volume to application :

Before creating any applications, it is recommended you login as a distinct user. This will be required if you want to log in to the web console and use it.

To login to the OpenShift cluster from the Terminal run:

`oc login -u developer -p developer  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

This will log you in using the credentials:
Username: developer
Password: developer
Use the same credentials to log into the web console.



You could instead create the project from the web console. If you do this, to change to the project from the command line run the command:

`oc project acs`{{execute}}

List PVC Associated to the project **acs** :


`oc get pvc`{{execute}}


Create a new application that claim volumes :


`oc new-app jenkins-persistent`{{execute}}


Check the list of the PVC now :

`oc get pvc`{{execute}}

Describe the pvc **jenkins** :

`oc describe  pvc jenkins`{{execute}}

Check the list of the PV :

`oc get pv`{{execute}}

