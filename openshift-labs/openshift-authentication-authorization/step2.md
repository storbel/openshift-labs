
Login with token

you can also use token to login to the cluster

`oc whoami --token `{{execute}}

`_TOKEN=$(oc whoami --token )`{{execute}}


To login to the OpenShift cluster from the Terminal using token:

`oc login https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com --token=$_TOKEN`{{execute}}

Call API

`curl -X GET -H "Authorization: Bearer <token>" https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com/oapi/v1 --insecure`{{execute}}




