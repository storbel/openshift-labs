

Apply a Pod that has two containers :

`oc apply -f two-containers.yml`{{execute}}


`oc get pod -o wide -w`{{execute}}


`oc get pod -l app=myapplication`{{execute}}


`oc describe pod two-containers `{{execute}}


`oc get pod two-containers -o yaml `{{execute}}

`oc get pod two-containers -o json| jq '.' `{{execute}}



`oc exec -it two-containers -c nginx-container -- /bin/bash `{{execute}}


`oc exec two-containers -c nginx-container  cat /usr/share/nginx/html/index.html`{{execute}}

 Show metrics for a given pod and its containers
`oc top pod two-containers --containers   `{{execute}}