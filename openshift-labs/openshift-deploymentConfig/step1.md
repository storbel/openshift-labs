



Deployment configurations are deploymentConfig OpenShift Container Platform API resources which can be managed with the oc command like any other resource. The following is an example of a deploymentConfig resource:


`oc create -f helloworld.yaml`{{execute}}

    - The pod template of the frontend deployment configuration describes a simple Ruby application.
    - There will be 5 replicas of frontend.
    - A configuration change trigger causes a new replication controller to be created any time the pod template changes.
    - An image change trigger trigger causes a new replication controller to be created each time a new version of the origin-ruby-sample:latest image stream tag is available.
    - The Rolling strategy is the default way of deploying your pods. May be omitted.
    - Pause a deployment configuration. This disables the functionality of all triggers and allows for multiple changes on the pod template before actually rolling it out.
    - Revision history limit is the limit of old replication controllers you want to keep around for rolling back. May be omitted. If omitted, old replication controllers will not be cleaned up.
    - Minimum seconds to wait (after the readiness checks succeed) for a pod to be considered available. The default value is 0.