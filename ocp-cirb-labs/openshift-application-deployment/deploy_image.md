### Creating an Application From an Image


`oc new-app mysql --name database \
     -e DATABASE_SERVICE_NAME=database \
    -e MYSQL_USER=acs_user \
    -e MYSQL_PASSWORD=acs2020 \
    -e MYSQL_DATABASE=ocpdemo`{{execute}}


`oc get pod -l app=advanced-app`{{execute}}


`oc rsh  $(oc get pod -l app=database -o name)`{{execute}}

in case of **error**, connect to the Openshift console, and use the Pod terminal  :


`mysql -u acs_user ocpdemo -p`{{execute}}

`show databases;`{{execute}}

`use ocpdemo;`{{execute}}

Manually:
`mysql -u acs_user ocpdemo -p`{{copy}}

`show databases;`{{copy}}

`use ocpdemo;`{{copy}}


Create Table and insert record :
`CREATE TABLE dbversion (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,version VARCHAR(30) NOT NULL);
INSERT INTO dbversion (version) VALUES ('1.0');
`{{execute}}

Manually:
`CREATE TABLE dbversion (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,version VARCHAR(30) NOT NULL);
INSERT INTO dbversion (version) VALUES ('1.0');`{{copy}}




`



sh-4.2$ mysql -u acs_user -p ocpdemo
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.7.24 MySQL Community Server (GPL)

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE TABLE dbversion (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,version VARCHAR(30) NOT NULL);
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO dbversion (version) VALUES ('1.0');
Query OK, 1 row affected (0.01 sec)

`

Check the web application now :


http://advanced-app-acs.[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com






Patch Deployment :

`oc patch -n acs --type=strategic dc database \
 -p '{"spec":{"template":{"spec":{"containers":[{"name":"database","resources": {"limits":{"cpu":"100m","memory":"256Mi"}}}]}}}}'`{{execute}}



Import image to local container registry :


`oc import-image openshiftkatacoda/blog-django-py --confirm`{{execute}}









