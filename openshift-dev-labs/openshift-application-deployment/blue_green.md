#### Blue Green Deployments

The master is blue, the branch is green.


## new project and blue app from master

`oc new-project bluegreen --display-name="Blue Green" --description='Blue Green Deployments'`{{execute}}

Create a blue application :

`oc new-app https://github.com/devops-with-openshift/bluegreen#master --name=blue `{{execute}}

expose bluegreen service (using blue)

`oc expose service blue --name=bluegreen`{{execute}}

green app deploy

`oc new-app https://github.com/devops-with-openshift/bluegreen#green --name=green`{{execute}}

 switch services to green

`oc get route/bluegreen -o yaml | sed -e 's/name: blue$/name: green/' | oc replace -f -`{{execute}}

and back again

`oc get route/bluegreen -o yaml | sed -e 's/name: green$/name: blue/' | oc replace -f -`{{execute}}