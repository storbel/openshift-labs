
Deploy result application : 


`oc new-app https://github.com/storbel/example-voting-app.git --context-dir=worker --name=worker  --strategy=docker `{{execute}}



List Created pod and their status, wait for them to be in **running** state :

`oc get pod`{{execute}}

Follow the building progress : 

`oc logs -f bc/worker`{{execute}}


List all the components created for this application : 


`oc get all -l app=worker`{{execute}}
