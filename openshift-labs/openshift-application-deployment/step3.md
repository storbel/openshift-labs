### Creating an Application From an Image


`oc new-app mysql --name database \
    -e MYSQL_USER=acs_user \
    -e MYSQL_PASSWORD=acs2020 \
    -e MYSQL_DATABASE=ocpdemo`{{execute}}
OOPS!!!, we haven't the intention to create a mysql database, but a PostgrSQL one, please remove all the components created related to the application database
to do so, Openshift has a selector feature that enable to delete any element containing a specific label


First check what was created under the label app=database :


`oc get all -l app=database`{{execute}}

`oc delete all -l app=database`{{execute}}

only **image stream** is not using the label mechanism, so it need to be deleted as follow :


`oc delete is database`{{execute}}

Create a new application based on postgeSQL :

`oc new-app openshift/postgresql-persistent --name database \
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
