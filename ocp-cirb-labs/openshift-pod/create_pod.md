

Read the Pod defintion :
`cat pod.yml`{{execute}}


Apply the pod definition
`oc apply -f pod.yml`{{execute}}

Get the pod list :

`oc get pod`{{execute}}
Let's check why the pod is in "Error"


`oc logs one-container`{{execute}}

Follow pod logs :

`oc logs -f one-container`{{execute}}





let's fix :

`oc delete -f pod.yml`{{execute}}

Allow developer to deploy root based images :
`oc adm policy add-scc-to-user anyuid -z default -n acs --as system:admin`{{execute}}

Apply the pod definition again :
`oc apply -f pod.yml`{{execute}}

Get the pod list :

`oc get pod`{{execute}}

Follow the pod creation progress :

`oc get pod -w`{{execute}}


List all the images already loaded within Openshift :

`oc get is -n openshift --as system:admin`{{execute}}




Run pod as interactive shell
`oc run -i --tty busybox --image=busybox -- sh `{{execute}}

Run command on pod without getting on it's shell :
`oc exec busybox-1-2q9gf -- ip a `{{execute}}


 Run pod nginx in a specific namespace mynamespace
`oc run nginx --image=nginx  -n acs`{{execute}}

check the deploymentconfig created :
`oc get deploymentconfig`{{execute}}


get the pod logs :

`oc get pod `{{execute}}
`oc logs nginx-1-xxx `{{execute}}

 Run pod nginx and write its spec into a file called pod.yaml
`oc run nginx --image=nginx --expose=true --replicas=2 --port=8080  --dry-run -o yaml > nginx.yaml`{{execute}}

Read the defintion file :
`cat nginx.yaml`{{execute}}