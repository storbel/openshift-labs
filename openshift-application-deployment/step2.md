### Creating an Application Using the CLI

#### Creating an Application From Source Code

`oc new-app https://github.com/storbel/basic-app.git`{{execute}}

`oc status `{{execute}}


`oc get pod  `{{execute}}

` POD=$(oc get pod|grep basic-app | grep Running | awk '{print $1}')`{{execute}}
` echo $POD`{{execute}}


`oc get pod $POD -o yaml `{{execute}}

`oc get pod $POD -o json | jq '.spec.containers'`{{execute}}

`oc get bc `{{execute}}

`oc get bc -o yaml `{{execute}}

`oc  get is`{{execute}}

`oc  get is basic-app -o json | jq '.' `{{execute}}






`oc  get service `{{execute}}

`oc  get route `{{execute}}

`oc  get route `{{execute}}
