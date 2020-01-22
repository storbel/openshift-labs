
Create new project named **ocp** :

`oc new-project ocp`

display existing components :

`oc get all`

Apply the configuration on the file below :

`oc create -f labels_selectors.yml`


Dont worry about the applications status, as it's only for demo purposes


List only application deployed on nodes of **dev**


List only application deployed on nodes of **prod**


List only application that belong to application **amadeus**


List only application that belong to application **avia** and deployed on node **dev**




`oc adm top pod --selector='' `