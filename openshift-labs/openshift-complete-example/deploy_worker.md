
Deploy result application : 


`oc new-app https://github.com/mmumshad/example-voting-app.git --context-dir=worker   --strategy=docker `{{execute}


`oc get pod`{{execute}}


`oc get all -l app=worker`{{execute}}


` `{{execute}



` `{{execute}

