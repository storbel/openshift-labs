
Deploy this application :

`oc new-app https://github.com/openshift/ruby-hello-world.git`{{execute}}




List the deployment configs:

`oc get dc`{{execute}}

Follow build progress :

`oc logs -f bc/ruby-hello-world`{{execute}}


List the build configs:

`oc describe bc/ruby-hello-world`{{execute}}



Check the build config details :
`oc get  bc/ruby-hello-world -o json | jq '.'`{{execute}}


oc create deployment mydep --image=nginx --dry-run -o yaml