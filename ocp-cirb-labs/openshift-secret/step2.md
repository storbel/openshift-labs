
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
`cat  database-secrets.yml`{{execute}}

Create the secret :
`oc create -f database-secrets.yml`{{execute}}

Check the new secret created :

`oc get secret`{{execute}}

Display the secret :

`oc get secret db-secrets -o yaml`{{execute}}


Create  a Pod that mount the secret as a volume :


check the content of the secret-vol-pod.yml


`cat secret-vol-pod.yml`{{execute}}


`oc create -f secret-vol-pod.yml`{{execute}}

List pod status :

`oc get pod`{{execute}}

List the status of all the components on the project **acs** :

`oc status --suggest`{{execute}}


Describe the Pod to volume mounts  configured :

` oc describe  $(oc get pod -l app=secret-vol-pod -o name) `{{execute}}

Enter the container shell :

`oc rsh $(oc get pod -l app=secret-vol-pod -o name)`{{execute}}

in case of error, try to access directly the pod terminal via the link blow :

https://console-openshift-console-[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com/console/project/acs/browse/pods/secret-vol-pod?tab=terminal

List the secrets :

`ls /etc/secret-volume/`{{execute}}


Read the content of the files found under /etc/secret-volume :

`cat /etc/secret-volume/dbname`{{execute}}

`cat /etc/secret-volume/username`{{execute}}

`cat /etc/secret-volume/hostname`{{execute}}

`cat /etc/secret-volume/password`{{execute}}
