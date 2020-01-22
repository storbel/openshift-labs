## Persisten Volumes

 List persistent volumes


`oc get pv`{{execute}}

 Create persistent volumes for demo :

`oc create -f volumes.json`{{execute}}

 Describe a  persistent volume


`oc describe pv pv-01`{{execute}}

 Create a new PV :

 Export the Persistent Volume description to a file
`oc get pv pv-01 -o yaml |tee -a new-pv.yaml`{{execute}}

 Display the PV yaml file


`cat new-pv.yaml`{{execute}}


 Edit the new-yaml file to update the name of the volume to pv-mypv

`vi new-pv.yaml`{{execute}}



 Create a new PV name pv-mypv

`oc create -f new-pv.yaml`{{execute}}

List persistent volume and check that you have a new volume

`oc get pv -o wide `{{execute}}

 Display the newly created PV

`oc describe pv new-pv`{{execute}}

 Edit the pv-03 to accept also the RWX accessMode

edit the pv-03 and add the RWX to the access modes list as follow :
<pre>
...

spec:
...
  accessModes:
  - ReadWriteOnce
  - ReadWriteMany
...

</pre>
`oc edit pv pv-03`{{execute}}

<pre>
persistentvolume "pv-03" edited
</pre>

List Persistent volumes again :

`oc get pv -o wide `{{execute}}

Try to modify the volume name now :



<pre>
error: At least one of apiVersion, kind and name was changed
</pre>

You notice that this operation is not possible, once created, you can no longer update apiVersion, kind and name details on a PV, you need to re-create as follow :

`oc get pv pv-03 -o yaml > pv-03-bis.yaml`{{execute}}

Delete the pv :
` oc delete pv pv-03 `{{execute}}

Modify the name of on the pv-03.yml file

`vi pv-03-bis.yaml`{{execute}}

Re-create the PV :

`oc create -f pv-03-bis.yaml`{{execute}}
