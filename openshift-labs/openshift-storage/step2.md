## Persisten Volumes


### Create persistent volumes for demo :

`oc create -f volumes.json`{{execute}}

### Describe a  persistent volume


`oc describe pv pv-01`{{execute}}

### Create a new PV :

#### Export the Persistent Volume description to a file
`oc get pv pv-01 -o yaml |tee -a new-pv.yaml`{{execute}}

#### Display the PV yaml file


`cat new-pv.yaml`{{execute}}


### Edit the new-yaml file to update the name of the volume to pv-mypv

`vi new-pv.yaml`{{execute}}



### Create a new PV name pv-mypv

`oc create -f new-pv.yaml`{{execute}}

### Display the newly created PV

`oc describe pv new-pv`{{execute}}

### Edit the pv-03 to accept also the RWX accessMode

edit the pv-03 and add the RWX to the access modes list as follow :
<pre>
...
persistentvolume "pv-08" created
persistentvolume "
persistentvolume "pv-08" created
persistentvolume "pv

spec:
...
  accessModes:
  - ReadWriteOnce
  - ReadWriteMany
  - ReadOnlyMany
...

<pre>
`oc edit pv pv-03`{{execute}}


You notice that this operation is not possible, once created, you can no longer update much details on a PV, you need to re-create as follow :


`oc get pv pv-03 > pv-03.yaml`{{execute}}

Delete the pv :
` oc delete pv pv-03 `{{execute}}

Modify the access modes on the pv-03.yml file

`vi pv-03.yaml`{{execute}}

Re-create the PV :

`oc create -f pv-03.yaml`{{execute}}
