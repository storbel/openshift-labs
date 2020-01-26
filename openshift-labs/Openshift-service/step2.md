


Deploy a basic nginx service :

`oc new-app openshift/nginx`{{execute}}


Expose the service:

`oc expose  svc/nginx`{{execute}}



To see a list of the pod IP addresses associated with a service, you can use the oc get endpoints command:

`oc get endpoints nginx`{{execute}}