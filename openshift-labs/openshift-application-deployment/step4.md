### Creating an Application From a Template


List all the Templates available :

`oc get templates -n openshift`{{execute}}



Create a new application based on the Template httpd-example :

`oc new-app httpd-example`{{execute}}


Follow the  building logs :


`oc logs -f bc/httpd-example`{{execute}}


Check the components create via the template :

`oc get all -l app=httpd-example`{{execute}}


access to your application :


http://httpd-example-acs.[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com




