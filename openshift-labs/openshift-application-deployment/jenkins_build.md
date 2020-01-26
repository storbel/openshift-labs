Now, we will deply a new application with Jenkins,

Another Build type rater than **Source** and **Docker**, we have **Jenkins**


In this part we will create a new BuildConfig with a Jenkins Pipeline

Read the yaml definition file **jenkins_build.yaml** :

`cat jenkins_build.yaml`{{execute}}

Make  a Dry-run of the build creation  :
`oc create -f jenkins_build.yaml -dry-run -o yaml`{{execute}}

Create the BuildConfig now :

`oc create -f jenkins_build.yaml`{{execute}}

Check the new  build configs :

`oc get bc`{{execute}}

Describe the **basic-pipeline** BuildConfig :

`oc describe bc basic-pipeline`{{execute}}

Show details of the build Config  **basic-pipeline**:

`oc get bc basic-pipeline -o yaml`{{execute}}

