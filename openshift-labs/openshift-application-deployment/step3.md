### Creating an Application From an Image


`oc new-app mysql --name database \
    -e MYSQL_USER=acs_user \
    -e MYSQL_PASSWORD=acs2020 \
    -e MYSQL_DATABASE=ocpdemo`{{execute}}


Get the pod name for  **basic-app**:

` POD=$(oc get pod|grep database | grep Running | awk '{print $1}')`{{execute}}

Display the Pod name :

` echo $POD`{{execute}}



Copy the SQL file to the POD:

`oc rsync demodb.sql $POD:/tmp`{{execute}}
