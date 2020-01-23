

Deploy a sample application :


`oc new-app nginx-example`{{execute}}

`oc expose svc/nginx`{{execute}}


List ConfigMap present on the project **acs**

`oc get cm`{{execute}}



Create a configMap :

`cat prefs.yml`{{execute}}

`oc create -f prefs.yml`{{execute}}

List ConfigMap present on the project **acs**
`oc get cm`{{execute}}

Display the newly created ConfigMap :

`oc get cm prefs -o yaml`{{execute}}

Delete configMap Prefs : 

`oc delete cm prefs `{{execute}}



