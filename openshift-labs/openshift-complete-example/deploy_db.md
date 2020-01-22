


Create a new application based on postgeSQL named db:

`oc new-app openshift/postgresql-ephemeral --name db \
    -e POSTGRESQL_USER=postgres_user \
    -e POSTGRESQL_DATABASE=postgres \
    -e POSTGRESQL_PASSWORD=postgres_password`{{execute}}
    
    
`oc get pod`{{execute}}
    
`oc logs -f db-1-build`{{execute}


`oc get pod`{{execute}}


`oc get all -l app=db`{{execute}}




