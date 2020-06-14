
List the existing Daemonset :
`oc get daemonset`{{execute}}


Get the pod list :
`oc get pod`{{execute}}

Deploy new daemonset :
`oc create -f  daemonset-selector.yml`{{execute}}


List the daemonset :
`oc get daemonset`{{execute}}

No pod related the the daemonset was created


`oc describe daemonset`{{execute}}


Let's fix it, label the node with type=infra:


`oc label node crc-rk2fc-master-0 type=infra`{{execute}}

List the daemonset :
`oc get daemonset`{{execute}}

Get the pod list :
`oc get pod`{{execute}}
