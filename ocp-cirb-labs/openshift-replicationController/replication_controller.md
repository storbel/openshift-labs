

#### Create a Replication controller



Read the ReplicationController definition file :

`cat replication_controller.yml`{{execute}}


List the pods :


`oc get pod`{{execute}}



List the replication controllers :



`oc get rc`{{execute}}




Create the replication controller :



`oc create -f replication_controller.yml`{{execute}}



List the pods :


`oc get pod`{{execute}}



List the replication controllers :



`oc get rc`{{execute}}


Edit the replication controller and increment the replication controller to 5 :


`oc edit rc frontend-1`{{execute}}


List the pods :


`oc get pod`{{execute}}



List the replication controllers :



`oc get rc`{{execute}}

