### Creating an Application From a Template
A template describes a set of objects that can be parameterized and processed to produce a list of objects for creation by OpenShift Container Platform. A template can be processed to create anything you have permission to create within a project

List all the Templates available :

`oc get templates -n openshift`{{execute}}

List the parameters of the template :

`oc process --parameters -n openshift httpd-example`{{execute}}




Create a new application based on the Template httpd-example :

`oc new-app httpd-example`{{execute}}


Follow the  building logs :


`oc logs -f bc/httpd-example`{{execute}}


Check the components create via the template :

`oc get all -l app=httpd-example`{{execute}}


access to your application :


http://httpd-example-acs.[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com





Delete application :


oc delete all -l app=httpd-example


`oc new-app httpd-example SOURCE_REPOSITORY_URL=https://github.com/storbel/ratp.git`{{execute}}




