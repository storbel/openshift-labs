
Deploy vote application : 


`oc new-app https://github.com/mmumshad/example-voting-app.git --name=vote --context-dir=vote`{{execute}}


`oc get pod`{{execute}}


`oc get all -l app=vote`{{execute}}


