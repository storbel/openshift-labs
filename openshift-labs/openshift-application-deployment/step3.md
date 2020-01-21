### Creating an Application From an Image


`oc new-app mysql --name database \
    -e MYSQL_USER=acs_user \
    -e MYSQL_PASSWORD=acs2020 \
    -e MYSQL_DATABASE=ocpdemo`{{execute}}

`oc new-app openshift/postgresql-92-centos7 --name database \
    -e POSTGRESQL_USER=acs_user \
    -e POSTGRESQL_DATABASE=ocpdemo \
    -e POSTGRESQL_PASSWORD=acs2020`{{execute}}


Get the pod name for  **basic-app**:

` POD=$(oc get pod|grep database | grep Running | awk '{print $1}')`{{execute}}

Display the Pod name :

` echo $POD`{{execute}}



`oc rsh $POD`{{execute}}

Connect to Database :

`psql -h localhost -p 5432 -U acs_user ocpdemo`{{execute}}

`CREATE TABLE dbversion (id SERIAL PRIMARY KEY,version VARCHAR(30) NOT NULL);
INSERT INTO dbversion (version) VALUES ('1.0');
`{{execute}}
