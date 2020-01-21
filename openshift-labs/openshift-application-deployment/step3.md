### Creating an Application From an Image


`oc new-app mysql --name database`{{execute}}


Get the pod name for  **basic-app**:

` POD=$(oc get pod|grep database | grep Running | awk '{print $1}')`{{execute}}

Display the Pod name :

` echo $POD`{{execute}}



Copy the SQL file to the POD:

`oc rsync demodb.sql $POD:/tmp`{{execute}}


hostname = database
username = acs_user
password = acs2020
dbname = ocpdemo

