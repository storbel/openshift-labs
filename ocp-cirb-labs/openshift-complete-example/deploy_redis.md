

Deploy redis application : 


`oc new-app redis-ephemeral --name redis -e REDIS_PASSWORD=redis_password`{{execute}}


`oc get pod`{{execute}}


`oc get all -l app=redis`{{execute}}

