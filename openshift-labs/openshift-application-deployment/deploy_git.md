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



Display Pod **basic-app** details :

`oc get  $(oc get pod -l app=basic-app -o name) -o yaml `{{execute}}


Display containers configuration :

`oc get $(oc get pod -l app=basic-app -o name) -o json | jq '.spec.containers'`{{execute}}

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



Deploy from git with **docker** strategy

`oc new-app --name=dbinit --strategy=docker \
 https://github.com/devops-with-openshift/liquibase-example.git `{{execute}}


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


Scale the application from 1 to 5 Replicas :


`oc scale --replicas=5 dc/advanced-app -n acs`{{execute}}


Scale Down the application to 3 Replicas :

`oc scale --replicas=3 dc/advanced-app -n acs`{{execute}}


`oc get pods -o wide -l app=advanced-app`{{execute}}

Modify the index.php page code source on  your git repository, then re-deploy application :


Rebuild the application

`oc rollout latest dc/advanced-app -n acs`{{execute}}

Check of your updates were applied ???? It was not applied as an image build should run first

Start a New build :

`oc start-build bc/advanced-app`{{execute}}

Rebuild the application

`oc rollout latest dc/advanced-app -n acs`{{execute}}




Check what happens on the Openshift Console overview tab

Change rollout Strategy :

`oc patch dc advanced-app -p '{"spec":{"strategy":{"type":"Recreate"}}}'`{{execute}}

Add new environment variable :
`oc set env dc advanced-app color=blue`{{execute}}
When the environment variables are updated using oc set env, the application will
be redeployed automatically with the new configuration. If you want to see what envi‐
ronment variables will be set in the container, you can use oc set env with the --
list option:
`oc set env dc/advanced-app --list`{{execute}}

`
# deploymentconfigs myapp, container myapp
color=blue`