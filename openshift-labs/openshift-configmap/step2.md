

Deploy a sample application :


`oc new-app nginx`{{execute}}



Create a configMap :

`cat prefs.yml`{{execute}}

`oc create -f prefs.yml`{{execute}}


`oc get cm`{{execute}}


`oc get cm prefs -o yaml`{{execute}}
