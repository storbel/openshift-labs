
Login with token

you can also use token to login to the cluster

`oc whoami -t `{{execute}}

`_TOKEN=$(oc whoami -t )`{{execute}}


To login to the OpenShift cluster from the Terminal using token:

`oc login https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com --token=$_TOKEN`{{execute}}

Call API

`curl -X GET -H "Authorization: Bearer $_TOKEN" https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com/oapi/v1 --insecure`{{execute}}




