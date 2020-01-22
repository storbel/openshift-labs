
Deploy vote application : 


`oc new-app https://github.com/storbel/example-voting-app.git --name=vote --context-dir=vote`{{execute}}


List Created pod and their status, wait for them to be in **running** state :

`oc get pod`{{execute}}

Follow the building progress : 

`oc logs -f bc/vote`{{execute}}

Expose the Service to create a route for the application : 


`oc expose svc/vote`{{execute}}


List all the components created for this application : 


`oc get all -l app=vote`{{execute}}


