Advanced topics




Get the pod name :

` POD=$(oc get pod|grep hello-openshift | grep Running | awk '{print $1}')`{{execute}}

Display the Pod name :

` echo $POD`{{execute}}


Get to the pod shell :

` oc rsh $POD`{{execute}}

get configuration volume :

`configVol=$(mount | grep resolv|awk '{print $2}')`{{execute}}

locate the configuration volume pushed by Kubernetes :

`mount | grep $configVol`{{execute}}

Read the resolv.conf file :

` cat /etc/resolv.conf`{{execute}}

Get the nameserver configured :

`nameserver=$(cat /etc/resolv.conf|grep nameserver|awk '{print $2}')`{{execute}}


` echo $nameserver`{{execute}}


Check to which  Pod this ip is associated :

`oc get pods --all-namespaces --as system:admin -o wide|grep $nameserver`{{execute}}





