### Creating an Application From Source Code

`oc new-app https://github.com/storbel/basic-app.git`{{execute}}

`oc status `{{execute}}

wait 2 seconds

`oc get pod  `{{execute}}

wait 2 seconds

`oc logs  basic-app-1-build`{{execute}}

Follow in real-time the image build process by following the build pod logs :


`oc logs -f basic-app-1-build`{{execute}}

Follow the logs until getting **Push successful**


Get the pod name for  **basic-app**:

` POD=$(oc get pod|grep basic-app | grep Running | awk '{print $1}')`{{execute}}

Display the Pod name :

` echo $POD`{{execute}}

Display Pod **basic-app** details :

`oc get pod $POD -o yaml `{{execute}}

Display containers configuration :

`oc get pod $POD -o json | jq '.spec.containers'`{{execute}}

List **building configs** :

`oc get bc `{{execute}}

`oc get bc -o yaml `{{execute}}

List **image stream** :

`oc  get is`{{execute}}

List **basic-app** application associated service :

`oc  get is basic-app -o json | jq '.' `{{execute}}


List services :

`oc  get service `{{execute}}

Display service create for **basic-app** :

`oc  get  svc basic-app -o yaml  `{{execute}}

Check if there's a route create for the application :

`oc  get route `{{execute}}

Create a route :

`oc  expose svc/basic-app `{{execute}}




`oc  get route `{{execute}}

Access to the application via the link belwo :


http://basic-app-acs.[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com


You can override the build strategy by setting the --strategy flag to either docker, pipeline or source.
Create an application with Docker strategy :


a folder containing a Dockerfile has been created for you.

List the folder files :
`ls myapp`{{execute}}

Build a new application based on the Dockerfile image definintion on myapp/Dockerfile

`oc new-app myapp --strategy=docker`{{execute}}

Delete application myapp and all it's components : 

`oc delete all -l app=myapp`{{execute}}


Create an application from a specific branch :

`oc new-app https://github.com/storbel/basic-app.git#advanced --name advanced-app`{{execute}}

`oc status `{{execute}}

wait 2 seconds

`oc get pod  `{{execute}}

wait 2 seconds

`oc logs  advanced-app-1-build`{{execute}}

Follow in real-time the image build process by following the build pod logs :


`oc logs -f advanced-app-1-build`{{execute}}

Follow the logs until getting **Push successful**

`oc  expose svc/advanced-app `{{execute}}

Access to the application via the link belwo :

http://advanced-app-acs.[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com

