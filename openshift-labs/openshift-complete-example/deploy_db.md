


Create a new application based on postgeSQL named db:


`oc new-app mysql --name db \
    -e MYSQL_USER=postgres_user \
    -e MYSQL_PASSWORD=postgres_password \
    -e MYSQL_DATABASE=postgres`{{execute}}


`oc get pod`{{execute}}



List Created pod and their status, wait for them to be in **running** state :

`oc get pod`{{execute}}



List all the components created for this application :


`oc get all -l app=db`{{execute}}




