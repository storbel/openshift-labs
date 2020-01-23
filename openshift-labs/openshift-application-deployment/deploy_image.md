### Creating an Application From an Image


`oc new-app mysql --name database \
    -e MYSQL_USER=acs_user \
    -e MYSQL_PASSWORD=acs2020 \
    -e MYSQL_DATABASE=ocpdemo`{{execute}}
    



Get the pod name for  **basic-app**:

` POD=$(oc get pod|grep database | grep Running | awk '{print $1}')`{{execute}}

Display the Pod name :

` echo $POD`{{execute}}

`oc rsh $POD`{{execute}}

in case of **error**, connect to the Openshift console, and use the Pod terminal  :


`mysql -u acs_user -p ocpdemo`{{execute}}

`CREATE TABLE dbversion (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,version VARCHAR(30) NOT NULL);
INSERT INTO dbversion (version) VALUES ('1.0');
`{{execute}}


<pre>

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

</pre>

Check the Webapplication now : 


http://advanced-app-acs.[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com

