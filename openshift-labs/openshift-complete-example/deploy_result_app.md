
Deploy result application : 


`oc new-app https://github.com/mmumshad/example-voting-app.git --context-dir=result   --strategy=docker -e PORT=8080`{{execute}


`oc get pod`{{execute}}


`oc get all -l app=result`{{execute}}


` `{{execute}



` `{{execute}

