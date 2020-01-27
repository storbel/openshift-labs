


Deploy a basic nginx service :

`oc new-app openshift/hello-openshift`{{execute}}

List Services :


`oc get svc -o wide`{{execute}}

Chech the service:

`oc describe  svc/hello-openshift`{{execute}}


List Routes :

`oc get route `{{execute}}


Expose the service:

`oc expose  svc/hello-openshift`{{execute}}

To see a list of the pod IP addresses associated with a service, you can use the oc get endpoints command:

`oc get endpoints hello-openshift`{{execute}}

List Routes :

`oc get route `{{execute}}


Describe the new  routes :

`oc get route hello-openshift -o yaml  `{{execute}}

`oc describe route  hello-openshift `{{execute}}



Access to the new route :


