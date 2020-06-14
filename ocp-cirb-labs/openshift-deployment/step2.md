
Deploy this application :

`oc new-app https://github.com/openshift/ruby-hello-world.git`{{execute}}

List the deployment configs:

`oc get dc`{{execute}}


Describe the dc

`oc get dc ruby-hello-world -o yaml`{{execute}}


oc create deployment mydep --image=nginx --dry-run -o yaml