Object Counts Managed by Quota :

**pods** The total number of pods in a non-terminal state that can exist in the project.

**replicationcontrollers**  The total number of replication controllers that can exist in the project.

**resourcequotas**  The total number of resource quotas that can exist in the project.

**services**    The total number of services that can exist in the project.

**secrets**     The total number of secrets that can exist in the project.

**configmaps**  The total number of ConfigMap objects that can exist in the project.

**persistentvolumeclaims**  The total number of persistent volume claims that can exist in the project.


Now that we have quota created, we will try to create some pods and see what happens



Create a small pod :

`oc create -f smallpod.yml`{{execute}}



Creat a bigger one :

`oc create -f bigpod.yml`{{execute}}

take a look to the error message and try to fix the issue, then try again.


