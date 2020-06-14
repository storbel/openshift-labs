
List the number of pods :

`oc get pods`{{execute}}


Edit the Deployment configuration, and change the number of Replicas  to 5 :


`oc edit dc ruby-hello-world `{{execute}}

` modify this line :
    Replicas: 1
    `
List the number of pods now :


`oc get pods`{{execute}}

Check the dc display and understand what changed :


`oc get dc`{{execute}}

Change the Deployment Strategy :

Edit the deployment configuration and change the **Strategy** to **Recreate** instead of **Rolling**:

`oc edit dc ruby-hello-world `{{execute}}

` modify this line :
    strategy: "Rolling"
    `
Check immeditately what's happening on your Web console