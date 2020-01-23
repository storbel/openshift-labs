
Create new project named **ocp** :

`oc new-project ocp`{{execute}}

display existing components :

`oc get all`{{execute}}

Apply the configuration on the file below :

`oc create -f labels_selectors.yml`{{execute}}

List the Pods status :

`oc get pod`{{execute}}


Dont worry about the applications status, as it's only for demo purposes


Noticet that the pods are all pending so far, guess for what reason ??


The command below my help you, as there's no label infra=dev of infra=prod to host the pod in creating phase, so the scheduler don't know where to place the pods


`oc get node master -o json --as system:admin| jq '.metadata.labels'`{{execute}}




`oc get nodes -o wide --as system:admin`{{execute}}


label the master node to have the label **infra=dev**, and check the pods status :

`oc label node master infra=dev --as system:admin`{{execute}}

Check the node labels :

`oc get node master -o json --as system:admin| jq '.metadata.labels'`{{execute}}


Check the status of Pods now
`oc get pod`{{execute}}

change the infra label on the master node :

`oc label node master infra=prod --as system:admin --overwrite`{{execute}}

Check the now labels now :

`oc get node master -o json --as system:admin| jq '.metadata.labels'`{{execute}}


Check the pod status now :

`oc get pod -o wide --as system:admin`{{execute}}

As you may see, the pods with a node selector infra=dev as still up and running on the master now, even that it's now longer labeled infra=dev

This is not a bug, but working as expected, as the nodeSelector tag is only used during the placement if the pod, let's kill and re-deploy one of the dev pods

#### Select nodes based on labels and selectors


List only pods that belong to application **amadeus**


`oc get pod -l application=amadeus`{{execute}}

or

`oc get pod --selector='application=amadeus'`{{execute}}

List only pod that belong to application **avia**

`oc get pod -l application=avia`{{execute}}

List only pod that belong to application **amadeus** and located in **france** :

`oc get pod --selector='application=amadeus,country=france'`{{execute}}


Delete Pod

use `oc delete pod POD_NAME` to delete a pod, a new Pod will be spinned as we specified at least one replica need to be up on the DeploymentConfig


Delete Pods located in France :

`oc delete pod -l country=france`{{execute}}