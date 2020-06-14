

get the service ip :

`oc get svc -o wide`{{execute}}

Check the cluster service CIDR configuration :

`cat /etc/origin/master/master-config.yaml`{{execute}}
