Use of Secret as an Environment Variable :


Create  a Pod that mount the secret as a volume :


`oc create -f secret-env-pod.yml`{{execute}}

List pod status :

`oc get pod`{{execute}}



List the status of all the components on the project **acs** :

`oc status --suggest`{{execute}}

Get the pod name for  **secret-vol-pod**:

` POD=$(oc get pod|grep secret-env-pod | grep Running | awk '{print $1}')`{{execute}}

Display the Pod name :

` echo $POD`{{execute}}

Describe the Pod to check ENV vars configured :

` oc describe pod $POD `{{execute}}

Enter the container shell :

`oc rsh $POD`{{execute}}

in case of error, try to access directly the pod terminal via the link blow :

https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com/console/project/acs/browse/pods/secret-env-pod?tab=terminal

Once, on the container shell, run the command below :

`env |egrep 'username|password|dbname|hostname'`{{execute}}