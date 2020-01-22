


Create a new application based on postgeSQL named db:

`oc new-app openshift/postgresql-ephemeral --name db \
    -e DATABASE_SERVICE_NAME=db \
    -e POSTGRESQL_USER=postgres_user \
    -e POSTGRESQL_DATABASE=postgres \
    -e POSTGRESQL_PASSWORD=postgres_password`{{execute}}

`oc get pod`{{execute}}
    
`oc logs -f db-1-build`{{execute}


List Created pod and their status, wait for them to be in **running** state :

`oc get pod`{{execute}}



List all the components created for this application : 


`oc get all -l app=db`{{execute}}




