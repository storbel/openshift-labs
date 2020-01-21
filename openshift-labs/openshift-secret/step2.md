
Use of Secret as volume :



encode values in base64

`echo  'mySuperPassword' | base64`{{execute}}

decode value in base64 format :


`echo 'bXlTdXBlclBhc3N3b3JkCg==' | base64 --decode`{{execute}}


Create a Secret in Openshift :

command line :



via a yaml file :

List the secrets :

`oc get secret`{{execute}}

Check the content of the **database-secrets.yml** file :

`oc create -f database-secrets.yml`{{execute}}

Check the new secret created :

`oc get secret`{{execute}}

Display the secret :

`oc get secret db-secrets -o yaml`{{execute}}


Create  a Pod that mount the secret as a volume :


`oc create -f secret-vol-pod.yml`{{execute}}

List pod status :

`oc get pod`{{execute}}

List the status of all the components on the project **acs** :

`oc status --suggest`{{execute}}

Get the pod name for  **secret-vol-pod**:

` POD=$(oc get pod|grep secret-vol-pod | grep Running | awk '{print $1}')`{{execute}}

Display the Pod name :

` echo $POD`{{execute}}

Describe the Pod to volume mounts  configured :

` oc describe pod $POD `{{execute}}

Enter the container shell :

`oc rsh $POD`{{execute}}

in case of error, try to access directly the pod terminal via the link blow :

https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com/console/project/acs/browse/pods/secret-vol-pod?tab=terminal

List the secrets :

`ls /etc/secret-volume/`{{execute}}


Read the content of the files found under /etc/secret-volume :

`cat /etc/secret-volume/dbname`{{execute}}

`cat /etc/secret-volume/username`{{execute}}

`cat /etc/secret-volume/hostname`{{execute}}

`cat /etc/secret-volume/password`{{execute}}
