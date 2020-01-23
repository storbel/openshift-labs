


Add Liveness probe for the deployment config advanced-app

`oc set probe dc advanced-app --liveness -- echo ok`{{execute}}
<pre>deploymentconfig.apps.openshift.io/advanced-app probes updated</pre>

Add Readiness Probe for the deployment config advanced-app

`oc set probe dc advanced-app --readiness --open-tcp=8080`{{execute}}


