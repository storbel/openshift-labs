#### NodePort


Create a new application :


`oc new-app openshift/mysql-ephemeral --name database     -e MYSQL_USER=acs_user     -e MYSQL_PASSWORD=acs2020     -e MYSQL_DATABASE=ocpdemo`{{execute}}

Display the actual **svc/mysql** :

`oc describe svc mysql`{{execute}}

Delete the Service created by Default :

`oc delete svc/mysql`{{execute}}


Create a new Service based on the NodePort type :

`oc create -f nodeport.yml`{{execute}}

Display the new **svc/mysql** :

`oc describe svc mysql`{{execute}}


Access to the new Service :

`telnet localhost 30306`{{execute}}

