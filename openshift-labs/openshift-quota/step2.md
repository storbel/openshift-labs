

List the actual quotas on the project **acs**
`oc get quota -n acs`{{execute}}

apply some quota on project **acs**

`oc create -f add-quota-acs.yml --as system:admin`{{execute}}

Describe the created quotas :

`oc describe quota project-acs-limit -n acs`{{execute}}

Use export to check the quotas values set :

`oc export quota project-acs-limit -n acs`{{execute}}

Now, create quota related to User **developer** :

`oc create -f add-quota-developer.yml --as system:admin`{{execute}}

Check the new list of quotas :

`oc get quota -n acs`{{execute}}


Describe the created quotas :

`oc describe quota user-developer-limit -n acs`{{execute}}

Use export to check the quotas values set :


`oc export quota user-developer-limit -n acs`{{execute}}



