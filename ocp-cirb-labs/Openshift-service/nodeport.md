#### NodePort


Create a new application :


`oc new-app openshift/mysql-ephemeral --name database     -e MYSQL_USER=acs_user     -e MYSQL_PASSWORD=acs2020     -e MYSQL_DATABASE=ocpdemo`{{execute}}

List Services :

`oc get svc`{{execute}}


Check the template used to run this application :
`oc get template mysql-ephemeral -n openshift`{{execute}}

Process the template :
`oc process mysql-ephemeral -n openshift --as system:admin| jq '.'`{{execute}}

Display the actual **svc/mysql** :

`oc describe svc mysql`{{execute}}

Delete the Service created by Default :

`oc delete svc/mysql`{{execute}}


Create a new Service based on the NodePort type :

`oc create -f nodeport.yml`{{execute}}

Display the new **svc/mysql** :

`oc describe svc mysql`{{execute}}


Access to the new Service :

`dnf install telnet`{{execute}}

`telnet $(oc describe node crc-rk2fc-master-0 --as system:admin| grep 'InternalIP' | cut -f2 -d:) 30306`{{execute}}


`dnf install mysql -y`{{execute}}

`nodeip=$(oc describe node crc-rk2fc-master-0 --as system:admin| grep 'InternalIP' | cut -f2 -d:)`{{execute}}

` mysql -h $nodeip -u acs_user -P 30306 -p`{{execute}}
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 260
Server version: 8.0.17 Source distribution

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>


`show databases;`{{execute}}